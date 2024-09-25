import 'package:flutter/material.dart';
import 'package:twym_2024/utils/constant.dart';

import '../../../utils/common_colors.dart';
import '../../../widget/common_appbar.dart';
import '../../common_view/scaffold_bg.dart';

class MyEventView extends StatefulWidget {
  const MyEventView({super.key});

  @override
  State<MyEventView> createState() => _MyEventViewState();
}

class _MyEventViewState extends State<MyEventView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Events',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.menu_sharp,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Column(
            children: [
              Container(
                height: 100,
                width: kDeviceWidth,
                decoration: BoxDecoration(
                  color: CommonColors.mWhite,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.mGrey500,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.inc.com/uploaded_files/image/1920x1080/getty_473909426_129584.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        kCommonSpaceH8,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 180,
                                    child: Text(
                                      "Project Team Meeting",
                                      style: getAppStyle(
                                        fontSize: 14,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 16,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      "Iscon, Ahmedabad, India",
                                      style: getAppStyle(
                                        fontSize: 10,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      "Work meeting",
                                      style: getAppStyle(
                                        fontSize: 12,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: CommonColors.mGrey300,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            right: 8,
                                            top: 5,
                                            bottom: 5),
                                        child: Text(
                                          "Facebook event",
                                          style: getAppStyle(
                                              height: 1, fontSize: 9),
                                        ),
                                      ),
                                    ),
                                  ),
                                  kCommonSpaceH15,
                                  kCommonSpaceH15,
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              kCommonSpaceV15,
              Container(
                height: 100,
                width: kDeviceWidth,
                decoration: BoxDecoration(
                  color: CommonColors.mWhite,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.mGrey500,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.inc.com/uploaded_files/image/1920x1080/getty_473909426_129584.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        kCommonSpaceH8,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 180,
                                    child: Text(
                                      "Project Team Meeting",
                                      style: getAppStyle(
                                        fontSize: 14,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 16,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      "Iscon, Ahmedabad, India",
                                      style: getAppStyle(
                                        fontSize: 10,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      "Work meeting",
                                      style: getAppStyle(
                                        fontSize: 12,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: CommonColors.mGrey300,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            right: 8,
                                            top: 5,
                                            bottom: 5),
                                        child: Text(
                                          "Facebook event",
                                          style: getAppStyle(
                                              height: 1, fontSize: 9),
                                        ),
                                      ),
                                    ),
                                  ),
                                  kCommonSpaceH15,
                                  kCommonSpaceH15,
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              kCommonSpaceV15,
              Container(
                height: 100,
                width: kDeviceWidth,
                decoration: BoxDecoration(
                  color: CommonColors.mWhite,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: CommonColors.mGrey500,
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.inc.com/uploaded_files/image/1920x1080/getty_473909426_129584.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        kCommonSpaceH8,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 180,
                                    child: Text(
                                      "Project Team Meeting",
                                      style: getAppStyle(
                                        fontSize: 14,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 16,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      "Iscon, Ahmedabad, India",
                                      style: getAppStyle(
                                        fontSize: 10,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 110,
                                    child: Text(
                                      "Work meeting",
                                      style: getAppStyle(
                                        fontSize: 12,
                                        color: CommonColors.blackColor,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: CommonColors.mGrey300,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            right: 8,
                                            top: 5,
                                            bottom: 5),
                                        child: Text(
                                          "Facebook event",
                                          style: getAppStyle(
                                              height: 1, fontSize: 9),
                                        ),
                                      ),
                                    ),
                                  ),
                                  kCommonSpaceH15,
                                  kCommonSpaceH15,
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: CommonColors.appGreenColor,
          shape:
              const StadiumBorder(), // Change to a ShapeBorder like StadiumBorder
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.white, size: 35),
        ),
      ),
    );
  }
}
