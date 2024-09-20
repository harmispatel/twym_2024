import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';
import 'package:twym_2024/utils/constant.dart';

import '../../../../utils/common_colors.dart';
import '../../../../widget/common_appbar.dart';
import '../../../../widget/primary_button.dart';
import '../../../common_view/scaffold_bg.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Ticket',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
        ),
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: CommonColors.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: kDeviceHeight / 4.5,
                      width: kDeviceWidth / 1,
                      child: Image.network(
                        "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?cs=srgb&dl=pexels-wendywei-1190298.jpg&fm=jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    kCommonSpaceV30,
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: CouponCard(
                        height: kDeviceHeight / 2.5,
                        curvePosition: 100,
                        curveRadius: 40,
                        borderRadius: 15,
                        decoration: BoxDecoration(
                            color: CommonColors.mWhite.withOpacity(0.2)),
                        firstChild: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 15, right: 25, left: 25),
                              child: Container(
                                height: 70,
                                width: kDeviceWidth,
                                child: Image.network(
                                  "https://pngimg.com/d/barcode_PNG4.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        secondChild: Container(
                          width: double.maxFinite,
                          decoration: const BoxDecoration(
                            border: Border(
                              top: BorderSide(color: Colors.white),
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 24, horizontal: 42),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "World Music Festival\n2024",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: CommonColors.mWhite,
                                    fontSize: 22,
                                    height: 1.2,
                                    fontWeight: FontWeight.w600),
                              ),
                              kCommonSpaceV20,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                            color: CommonColors.mWhite,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "July 25, 2023",
                                        style: TextStyle(
                                            color: CommonColors.blackColor,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      kCommonSpaceV20,
                                      Text(
                                        "Venue",
                                        style: TextStyle(
                                            color: CommonColors.mWhite,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "valencia, ES",
                                        style: TextStyle(
                                            color: CommonColors.blackColor,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Time",
                                        style: TextStyle(
                                            color: CommonColors.mWhite,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "09:00 PM",
                                        style: TextStyle(
                                            color: CommonColors.blackColor,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      kCommonSpaceV20,
                                      Text(
                                        "Seat",
                                        style: TextStyle(
                                            color: CommonColors.mWhite,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "03",
                                        style: TextStyle(
                                            color: CommonColors.blackColor,
                                            fontSize: 16,
                                            height: 1.2,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    kCommonSpaceV30,
                  ],
                ),
              ),
              kCommonSpaceV20,
              Text(
                "*Note",
                style: TextStyle(
                    color: CommonColors.appPinkColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 3),
                    child: Icon(
                      Icons.circle,
                      size: 8,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "No weapons, alcohol and other dangerous materials allowed on site.",
                      style: TextStyle(
                          color: CommonColors.blackColor,
                          fontSize: 16,
                          height: 1),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV5,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 3),
                    child: Icon(
                      Icons.circle,
                      size: 8,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Paid parking available at the corner of streets P and K .Use main entrance for check-in.",
                      style: TextStyle(
                          color: CommonColors.blackColor,
                          fontSize: 16,
                          height: 1),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV20,
              kCommonSpaceV20,
              PrimaryButton(
                  height: 50,
                  label: "Download Ticket",
                  lblSize: 20,
                  onPress: () {}),
              kCommonSpaceV50,
              kCommonSpaceV50,
              kCommonSpaceV50,
              Center(
                child: Text(
                  "Online Event Ticket",
                  style: TextStyle(fontSize: 22),
                ),
              ),
              kCommonSpaceV50,
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: kDeviceHeight / 4.5,
                  width: kDeviceWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?cs=srgb&dl=pexels-wendywei-1190298.jpg&fm=jpg",
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              kCommonSpaceV30,
              Text(
                "Event Link:",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              kCommonSpaceV10,
              Text(
                "https://zoom.us/j/1234567890?pwd=abcdef123456",
                style:
                    TextStyle(fontSize: 16, color: CommonColors.primaryColor),
              ),
              kCommonSpaceV20,
              Text(
                "*Note",
                style: TextStyle(
                    color: CommonColors.appPinkColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              ),
              kCommonSpaceV10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 3),
                    child: Icon(
                      Icons.circle,
                      size: 8,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "No weapons, alcohol and other dangerous materials allowed on site.",
                      style: TextStyle(
                          color: CommonColors.blackColor,
                          fontSize: 16,
                          height: 1),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV5,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 3),
                    child: Icon(
                      Icons.circle,
                      size: 8,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Paid parking available at the corner of streets P and K .Use main entrance for check-in.",
                      style: TextStyle(
                          color: CommonColors.blackColor,
                          fontSize: 16,
                          height: 1),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV5,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5, top: 3),
                    child: Icon(
                      Icons.circle,
                      size: 8,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Don’t share your barcode or link becuase with link or code only one person can join the events",
                      style: TextStyle(
                          color: CommonColors.blackColor,
                          fontSize: 16,
                          height: 1),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV50,
              kCommonSpaceV50,
              kCommonSpaceV50,
              kCommonSpaceV50,
              kCommonSpaceV50,
              kCommonSpaceV50,
              kCommonSpaceV50,
            ],
          ),
        ),
      ),
    );
  }
}
