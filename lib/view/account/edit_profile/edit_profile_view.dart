import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_utils.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';
import 'package:twym_2024/widget/common_appbar.dart';

import '../../../utils/common_colors.dart';
import '../../../widget/common_text_field.dart';
import '../../../widget/primary_button.dart';
import 'change_passwrod/change_password_view.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailPrimaryController = TextEditingController();
  final TextEditingController phonePrimaryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  String? selectedCountry = "India";
  String? selectedCity = "Ahmedabad";

  @override
  void initState() {
    // TODO: implement initState
    fullNameController.text = "Krunal patel";
    emailPrimaryController.text = "krunal@gmail.com";
    phonePrimaryController.text = "1234567890";
    emailController.text = "krunal@gmail.com";
    emailController.text = "1234567890";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'View Profile',
          iconTheme: IconThemeData(color: Colors.black),
        ),
        backgroundColor: CommonColors.mTransparent,
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabeledTextField(
                hintText: 'Full name',
                controller: fullNameController,
              ),
              LabeledTextField(
                hintText: 'Email (Primary)',
                controller: emailPrimaryController,
              ),
              LabeledTextField(
                hintText: 'Phone Number (Primary)',
                controller: phonePrimaryController,
              ),
              LabeledTextField(
                hintText: 'Email',
                controller: emailController,
              ),
              LabeledTextField(
                hintText: 'Phone Number',
                controller: phoneController,
              ),
              kCommonSpaceV10,
              Text(
                "Primary Location",
                style: getAppStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              kCommonSpaceV10,
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.mGrey500,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  focusColor: Colors.white,
                  value: selectedCountry,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    filled: true,
                    fillColor: CommonColors.mWhite,
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: CommonColors.blackColor,
                  ),
                  items: <String>[
                    'India',
                    'USA',
                    'Dubai',
                    'Pakistan',
                    'America',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                ),
              ),
              kCommonSpaceV10,
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.mGrey500,
                      blurRadius: 5,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: DropdownButtonFormField<String>(
                  isExpanded: true,
                  focusColor: Colors.white,
                  value: selectedCity,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: CommonColors.mGrey),
                    ),
                    filled: true,
                    fillColor: CommonColors.mWhite,
                  ),
                  icon: Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: CommonColors.blackColor,
                  ),
                  items: <String>[
                    'Ahmedabad',
                    'Surat',
                    'Jamnagar',
                    'Baroda',
                    'Rajkot',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                ),
              ),
              kCommonSpaceV20,
              PrimaryButton(
                height: 50,
                label: "Update Profile",
                lblSize: 20,
                onPress: () {},
              ),
              kCommonSpaceV15,
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    push(ChangePasswordView());
                  },
                  child: Text(
                    "Change Password",
                    style: getAppStyle(fontSize: 17, color: Color(0xff2a93d5)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
