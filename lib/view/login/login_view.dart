import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/common_utils.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';
import 'package:twym_2024/view/register/register_view.dart';

import '../../widget/common_social_media_container.dart';
import '../../widget/common_text_field.dart';
import '../../widget/primary_button.dart';
import 'login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passController = TextEditingController();

  late LoginViewModel mViewModel;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      emailController.text = "test1@123.com";
      passController.text = "9012";
      mViewModel.attachedContext(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    mViewModel = Provider.of<LoginViewModel>(context);

    return ScaffoldBG(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CommonColors.mTransparent,
          // appBar: CommonAppBar(
          //   title: 'twym',
          //   isTitleBold: false,
          // ),
          body: Center(
            child: SingleChildScrollView(
              padding: kCommonScreenPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login here",
                    style: getAppStyle(
                        color: CommonColors.primaryColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                  ),
                  kCommonSpaceV10,
                  Text(
                    "Welcome back you’ve\nbeen missed!",
                    textAlign: TextAlign.center,
                    style: getAppStyle(fontSize: 25),
                  ),
                  kCommonSpaceV50,
                  CommonTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  CommonTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passController,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Forgot password?",
                        style: getAppStyle(
                            fontSize: 17, color: CommonColors.primaryColor),
                      ),
                    ),
                  ),
                  kCommonSpaceV30,
                  PrimaryButton(
                    height: 50,
                    label: "Sign in",
                    lblSize: 20,
                    onPress: () {
                      if (isValid()) {
                        mViewModel.loginApi(
                            auth: "email",
                            country: "US",
                            input: emailController.text,
                            pin: passController.text);
                      }
                      // push(SubscriptionView());
                    },
                  ),
                  kCommonSpaceV20,
                  InkWell(
                    onTap: () {
                      push(RegisterView());
                    },
                    child: Text(
                      "Create new account",
                      textAlign: TextAlign.center,
                      style: getAppStyle(fontSize: 18),
                    ),
                  ),
                  kCommonSpaceV30,
                  Text(
                    "Or continue with",
                    textAlign: TextAlign.center,
                    style: getAppStyle(
                        fontSize: 16, color: CommonColors.appGreenColor),
                  ),
                  kCommonSpaceV15,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonSocialMediaContainer(
                          image: LocalImages.img_google,
                        ),
                        kCommonSpaceH8,
                        CommonSocialMediaContainer(
                          image: LocalImages.img_facebook,
                        ),
                        kCommonSpaceH8,
                        CommonSocialMediaContainer(
                          image: LocalImages.img_apple,
                        ),
                        kCommonSpaceH8,
                        CommonSocialMediaContainer(
                          image: LocalImages.img_linked_in,
                        ),
                        kCommonSpaceH8,
                        CommonSocialMediaContainer(
                          image: LocalImages.img_microsoft,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isValid() {
    if (emailController.text.trim().isEmpty) {
      CommonUtils.showSnackBar("Please enter email", color: CommonColors.mRed);
      return false;
    } else if (passController.text.trim().isEmpty) {
      CommonUtils.showSnackBar("Please enter password",
          color: CommonColors.mRed);
      return false;
    } else {
      return true;
    }
  }
}
