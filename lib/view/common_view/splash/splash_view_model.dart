import 'dart:async';
import 'package:flutter/material.dart';
import 'package:twym_2024/database/app_preferences.dart';
import 'package:twym_2024/models/login_master.dart';
import 'package:twym_2024/view/subscription/subscription_view.dart';
import '../../../services/index.dart';
import '../../../utils/common_utils.dart';
import '../../login/login_view.dart';

class SplashViewModel with ChangeNotifier {
  late BuildContext context;
  final services = Services();
  late LoginMaster? loginMaster;

  Future<void> attachedContext(BuildContext context) async {
    this.context = context;
    await startTimer();
  }

  Future<void> startTimer() async {
    // loginMaster = await AppPreferences.instance.getLoginDetails();
    // log("Stored User Details :: ${jsonEncode(AppPreferences.instance.getAccessToken())}");
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        String accessToken = AppPreferences.instance.getAccessToken();
        if (accessToken.isNotEmpty) {
          await pushAndRemoveUntil(const LoginView());
        } else {
          await pushAndRemoveUntil(const SubscriptionView());
        }
      },
    );
  }
}
