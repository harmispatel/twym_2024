import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_utils.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/common_view/bottom_navbar/bottom_navbar_view.dart';

import '../../utils/common_colors.dart';
import '../../utils/constant.dart';
import '../../widget/primary_button.dart';
import '../common_view/scaffold_bg.dart';

class SubscriptionView extends StatefulWidget {
  const SubscriptionView({super.key});

  @override
  State<SubscriptionView> createState() => _SubscriptionViewState();
}

class _SubscriptionViewState extends State<SubscriptionView> {
  bool isMonthlySelected = true;
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
                    "Subscription",
                    style: getAppStyle(
                        color: CommonColors.primaryColor,
                        fontSize: 35,
                        fontWeight: FontWeight.w500),
                  ),
                  kCommonSpaceV20,
                  Text(
                    "Unlock all the power of this mobile tool and\n enjoy digital experience like never before!",
                    textAlign: TextAlign.center,
                    style: getAppStyle(
                        color: CommonColors.blackColor,
                        fontSize: 20,
                        height: 1,
                        fontWeight: FontWeight.w500),
                  ),
                  kCommonSpaceV15,
                  Image.asset(LocalImages.img_subscription),
                  kCommonSpaceV15,
                  PrimaryButton(
                    height: 50,
                    buttonColor: CommonColors.appGreenColor,
                    label: "Start 7-day free trial",
                    lblSize: 20,
                    onPress: () {},
                  ),
                  kCommonSpaceV15,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMonthlySelected = true;
                      });
                    },
                    child: Container(
                      width: kDeviceWidth / 1,
                      decoration: BoxDecoration(
                        color: Color(0xffD7F3FB),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: isMonthlySelected
                              ? CommonColors.primaryColor
                              : Colors.transparent,
                          width: 1.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Monthly",
                              style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "First 7 days free - Then\$99/Year",
                              style: getAppStyle(
                                  color: CommonColors.blackColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  kCommonSpaceV15,
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isMonthlySelected = false;
                      });
                    },
                    child: Container(
                      width: kDeviceWidth / 1,
                      decoration: BoxDecoration(
                        color: Color(0xffD7F3FB),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: !isMonthlySelected
                              ? CommonColors.primaryColor
                              : Colors.transparent,
                          width: 1.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Annual",
                                  style: getAppStyle(
                                    color: CommonColors.primaryColor,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "First 30 days free - Then\$930/Year",
                                  style: getAppStyle(
                                      color: CommonColors.blackColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Container(
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Color(0xffDB1E5A),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12, right: 12),
                                  child: Text(
                                    "Best Deal",
                                    style: getAppStyle(
                                        color: CommonColors.mWhite,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  kCommonSpaceV15,
                  PrimaryButton(
                    height: 50,
                    label: "Submit",
                    lblSize: 20,
                    onPress: () {
                      pushAndRemoveUntil(BottomNavBarView());
                    },
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
