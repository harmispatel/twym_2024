import 'dart:developer';

import 'package:flutter/cupertino.dart';

import '../../models/login_master.dart';
import '../../services/api_para.dart';
import '../../services/index.dart';
import '../../utils/common_colors.dart';
import '../../utils/common_utils.dart';
import '../subscription/subscription_view.dart';

class LoginViewModel with ChangeNotifier {
  late BuildContext context;
  final _services = Services();

  void attachedContext(BuildContext context) {
    this.context = context;
    notifyListeners();
  }

  Future<void> loginApi({
    required String auth,
    required String country,
    required String input,
    required String pin,
  }) async {
    CommonUtils.showProgressDialog();
    Map<String, dynamic> params = <String, dynamic>{
      ApiParams.auth: auth,
      ApiParams.country: country,
      ApiParams.input: input,
      ApiParams.pin: pin,
    };

    LoginMaster? master = await _services.api!.login(params: params);
    CommonUtils.hideProgressDialog();
    if (master == null) {
      CommonUtils.oopsMSG();
    } else if (!master.success!) {
      CommonUtils.showSnackBar(
        master.message,
        color: CommonColors.mRed,
      );
    } else if (master.success!) {
      log("Success :: true");
      log("Access Token :: ${master.jwt}");
      CommonUtils.showSnackBar(
        master.message,
        color: CommonColors.greenColor,
      );
      // AppPreferences.instance.setAccessToken(master.sessionId ?? '');
      push(SubscriptionView());
      // AppPreferences.instance.setUserDetails(jsonEncode(master.data!.user));
      // gUserType = master.data!.user!.roleId!.toString();
      // globalUserMaster = AppPreferences.instance.getUserDetails();
      // SplashViewModel().checkGlobalUserData();
    }
    notifyListeners();
  }
}
