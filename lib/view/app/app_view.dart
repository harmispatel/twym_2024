import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../../generated/i18n.dart';
import '../../services/index.dart';
import '../../utils/common_colors.dart';
import '../../utils/common_utils.dart';
import '../../utils/constant.dart';
import '../../utils/global_variables.dart';
import '../common_view/splash/splash_view.dart';
import '../common_view/splash/splash_view_model.dart';
import '../register/register_view_model.dart';
import 'app_model.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  final _app = AppModel();
  final _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    Services().configAPI();
    _app.changeLanguage();
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      log('Couldn\'t check connectivity status', error: e);
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _app.connectionStatus = result;
    connectivity = _app.connectionStatus == ConnectivityResult.wifi
        ? true
        : _app.connectionStatus == ConnectivityResult.mobile
            ? true
            : _app.connectionStatus == ConnectivityResult.bluetooth
                ? true
                : _app.connectionStatus == ConnectivityResult.vpn
                    ? true
                    : false;
    log("InternetChanges :: ${_app.connectionStatus}");
    if (isNotifyConnectivity) {
      CommonUtils.showSnackBar(
        connectivity
            ? S.of(mainNavKey.currentContext!)!.online
            : S.of(mainNavKey.currentContext!)!.offline,
        color: connectivity ? CommonColors.greenColor : CommonColors.mRed,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppModel>.value(
      value: _app,
      child: Consumer<AppModel>(
        builder: (context, value, child) {
          value.isLoading = false;
          if (value.isLoading) {
            return Container();
          }
          return MultiProvider(
            providers: [
              ChangeNotifierProvider<SplashViewModel>(
                  create: (_) => SplashViewModel()),
              ChangeNotifierProvider<RegisterViewModel>(
                  create: (_) => RegisterViewModel()),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              color: CommonColors.primaryColor,
              navigatorKey: mainNavKey,
              locale: Locale(Provider.of<AppModel>(context).locale, ""),
              theme: ThemeData(
                useMaterial3: true,
                scaffoldBackgroundColor: CommonColors.mWhite,
                primaryColor: CommonColors.primaryColor,
                fontFamily: AppConstants.OUTFIT_FONT,
                colorScheme: ColorScheme.light(
                  primary: CommonColors.primaryColor,
                ),
                appBarTheme: AppBarTheme(
                  backgroundColor: CommonColors.mWhite,
                  foregroundColor: CommonColors.mWhite,
                  surfaceTintColor: Colors.transparent,
                  iconTheme: const IconThemeData(
                    color: CommonColors.primaryColor,
                  ),
                  scrolledUnderElevation: 0,
                  titleTextStyle: getAppStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: CommonColors.primaryColor,
                  ),
                ),
                menuTheme: MenuThemeData(
                  style: MenuStyle(
                    surfaceTintColor:
                        const MaterialStatePropertyAll(CommonColors.mWhite),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    elevation: const MaterialStatePropertyAll(20),
                  ),
                ),
                progressIndicatorTheme: const ProgressIndicatorThemeData(
                  color: CommonColors.primaryColor,
                  linearMinHeight: 2,
                ),
                bottomSheetTheme: const BottomSheetThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                dialogBackgroundColor: CommonColors.mWhite,
                drawerTheme: const DrawerThemeData(
                  surfaceTintColor: CommonColors.mWhite,
                  backgroundColor: CommonColors.mWhite,
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: CommonColors.primaryColor,
                    foregroundColor: CommonColors.mWhite,
                  ),
                ),
                listTileTheme: ListTileThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  contentPadding: const EdgeInsets.all(0),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintStyle: getAppStyle(
                    color: CommonColors.mGrey,
                  ),
                ),
              ),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              localeListResolutionCallback: S.delegate.listResolution(
                  fallback: const Locale(AppConstants.LANGUAGE_ENGLISH, '')),
              home: SplashView(),
            ),
          );
        },
        child: Builder(builder: (context) {
          Provider.of<AppModel>(context, listen: false).attachContext(context);
          return Container();
        }),
      ),
    );
  }
}
