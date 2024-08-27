import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/common_utils.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';
import 'package:twym_2024/view/register/register_view.dart';

import '../../widget/common_social_media_container.dart';
import '../../widget/common_text_field.dart';
import '../../widget/primary_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CommonColors.mTransparent,
          // appBar: CommonAppBar(
          //   title: 'twym',
          //   isTitleBold: false,
          // ),
          body: Center(
            child: Padding(
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
                    // controller: emailController,
                  ),
                  CommonTextField(
                    hintText: "Password",
                    obscureText: true,
                    // controller: emailController,
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
                    onPress: () {},
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
}
