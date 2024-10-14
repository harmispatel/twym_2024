import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twym_2024/view/register/register_view_model.dart';

import '../../utils/common_colors.dart';
import '../../utils/common_utils.dart';
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
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final coPassController = TextEditingController();
  late RegisterViewModel mViewModel;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      mViewModel.attachedContext(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    mViewModel = Provider.of<RegisterViewModel>(context);

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
                    controller: nameController,
                  ),
                  CommonTextField(
                    hintText: "Email",
                    controller: emailController,
                  ),
                  CommonTextField(
                    hintText: "Password",
                    obscureText: true,
                    controller: passController,
                  ),
                  CommonTextField(
                    hintText: "Confirm Password",
                    obscureText: true,
                    controller: coPassController,
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
                    onPress: () {
                      if (isValid()) {
                        mViewModel.registerApi(
                            auth: "email",
                            country: "us",
                            input: emailController.text,
                            pin: passController.text,
                            type: "basic");
                      }
                    },
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

  bool isValid() {
    if (nameController.text.trim().isEmpty) {
      CommonUtils.showSnackBar(
        "Please enter name",
        color: CommonColors.mRed,
      );
      return false;
    } else if (emailController.text.trim().isEmpty) {
      CommonUtils.showSnackBar("Please enter email", color: CommonColors.mRed);
      return false;
    } else if (!CommonUtils.isvalidEmail(emailController.text.trim())) {
      CommonUtils.showSnackBar("Please enter valid email",
          color: CommonColors.mRed);
      return false;
    } else if (passController.text.trim().isEmpty) {
      CommonUtils.showSnackBar("Please enter password",
          color: CommonColors.mRed);
      return false;
    } else if (coPassController.text.trim().isEmpty) {
      CommonUtils.showSnackBar("Please enter confirm password",
          color: CommonColors.mRed);
      return false;
    } else if (passController.text != coPassController.text) {
      CommonUtils.showSnackBar("Password and Confirm password must be same",
          color: CommonColors.mRed);
      return false;
    } else {
      return true;
    }
  }
}
