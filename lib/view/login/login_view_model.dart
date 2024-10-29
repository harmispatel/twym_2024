import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:twym_2024/database/app_preferences.dart';
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
      log("JWT Token Local Store :: ${master.jwt}");
      await AppPreferences.instance.setAccessToken(master.jwt ?? '');
      CommonUtils.showSnackBar(
        master.message,
        color: CommonColors.greenColor,
      );
      //await AppPreferences.instance.setUserDetails(jsonEncode(master));
      // Navigate to SubscriptionView
      await pushAndRemoveUntil(const SubscriptionView());
    }
    notifyListeners();
  }
}
