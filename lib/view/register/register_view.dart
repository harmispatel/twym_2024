import 'package:flutter/material.dart';

import '../../utils/common_colors.dart';
import '../../utils/constant.dart';
import '../../utils/local_images.dart';
import '../../widget/common_social_media_container.dart';
import '../../widget/common_text_field.dart';
import '../../widget/primary_button.dart';
import '../common_view/scaffold_bg.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                    "Create Account",
                    style: getAppStyle(
                        color: CommonColors.primaryColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                  ),
                  kCommonSpaceV10,
                  Text(
                    "Create an account so you can explore all the existing job",
                    textAlign: TextAlign.center,
                    style: getAppStyle(fontSize: 25),
                  ),
                  kCommonSpaceV50,
                  CommonTextField(
                    hintText: "Name",
                    // controller: emailController,
                  ),
                  CommonTextField(
                    hintText: "Email",
                    // controller: emailController,
                  ),
                  CommonTextField(
                    hintText: "Password",
                    obscureText: true,
                    // controller: emailController,
                  ),
                  CommonTextField(
                    hintText: "Confirm Password",
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
                    label: "Sign up",
                    lblSize: 20,
                    onPress: () {},
                  ),
                  kCommonSpaceV20,
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Already have an account",
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
