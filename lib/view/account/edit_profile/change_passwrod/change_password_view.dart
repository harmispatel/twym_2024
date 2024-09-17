import 'package:flutter/material.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../../../utils/common_colors.dart';
import '../../../../widget/common_appbar.dart';
import '../../../../widget/common_text_field.dart';
import '../../../../widget/primary_button.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final TextEditingController newPassController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  bool isShowNewPass = true;
  bool isShowCoPass = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'Change Password',
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: CommonColors.mTransparent,
        body: Padding(
          padding: kCommonScreenPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LabeledTextField(
                hintText: 'New Password',
                controller: newPassController,
                suffixIcon: GestureDetector(
                    onTap: () {
                      if (isShowNewPass == false) {
                        setState(() {
                          isShowNewPass = true;
                        });
                      } else {
                        setState(() {
                          isShowNewPass = false;
                        });
                      }
                    },
                    child: Icon(!isShowNewPass
                        ? Icons.remove_red_eye
                        : Icons.visibility_off)),
                isObscure: isShowNewPass,
              ),
              LabeledTextField(
                hintText: 'Confirm Password',
                controller: confirmPassController,
                isObscure: isShowCoPass,
                suffixIcon: GestureDetector(
                    onTap: () {
                      if (isShowCoPass == false) {
                        setState(() {
                          isShowCoPass = true;
                        });
                      } else {
                        setState(() {
                          isShowCoPass = false;
                        });
                      }
                    },
                    child: Icon(!isShowCoPass
                        ? Icons.remove_red_eye
                        : Icons.visibility_off)),
              ),
              kCommonSpaceV20,
              PrimaryButton(
                height: 50,
                label: "Update Password",
                lblSize: 20,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
