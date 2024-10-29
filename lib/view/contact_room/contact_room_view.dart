import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/common_utils.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/contact_room/enter_contact_room/enter_cotact_room_view.dart';
import 'package:twym_2024/widget/common_text_field.dart';

class ContactRoomView extends StatefulWidget {
  const ContactRoomView({super.key});

  @override
  State<ContactRoomView> createState() => _ContactRoomViewState();
}

class _ContactRoomViewState extends State<ContactRoomView> {
  final edSearchController = TextEditingController();
  int selectedIndex = 0;
  int selectedListIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: CommonColors.mWhite,
        appBar: AppBar(
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
          //backgroundColor: Colors.red,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(LocalImages.img_connect_app_logo),
              kCommonSpaceV10,
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.arrow_back_outlined,
                      color: CommonColors.blackColor,
                      size: 20,
                    ),
                    kCommonSpaceH5,
                    Text(
                      "Contact Rooms",
                      style: getAppStyle(
                        color: CommonColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: kCommonScreenPaddingH + const EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CommonTextField(
                      height: 50,
                      controller: edSearchController,
                      bgColor: CommonColors.textFieldBgColor,
                      hintTextColor: CommonColors.hintTextColor,
                      prefixIconColor: CommonColors.hintTextColor,
                      hintFontSize: 14,
                      borderColor: Colors.transparent,
                      hintFontWeight: FontWeight.bold,
                      isPrefixIconButton: true,
                      hintText: "Search by keywords",
                    ),
                  ),
                  kCommonSpaceH15,
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CommonColors.appGreenColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        LocalImages.icon_setting,
                        color: CommonColors.mWhite,
                      ),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV10,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selectedIndex = 0;
                          },
                        );
                      },
                      child: Container(
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedIndex == 0
                              ? CommonColors.appGreenColor
                              : Colors.transparent,
                          border: Border.all(
                            color: selectedIndex == 1
                                ? CommonColors.mGrey500
                                : CommonColors.appGreenColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Open Contact Rooms",
                            style: getAppStyle(
                              color: selectedIndex == 0
                                  ? CommonColors.mWhite
                                  : CommonColors.mGrey500,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  kCommonSpaceH15,
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: Container(
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedIndex == 1
                              ? CommonColors.appGreenColor
                              : Colors.transparent,
                          border: Border.all(
                            color: selectedIndex == 1
                                ? CommonColors.appGreenColor
                                : CommonColors.mGrey500,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Past Contact Rooms",
                            style: getAppStyle(
                              color: selectedIndex == 1
                                  ? CommonColors.mWhite
                                  : CommonColors.mGrey500,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 4) +
                      const EdgeInsets.only(bottom: 15, top: 5),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedListIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        margin: const EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.300),
                              blurRadius: 10,
                              spreadRadius: 0.0,
                              offset: const Offset(0, 4),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Project Team Meeting",
                              style: getAppStyle(
                                color: CommonColors.mBlue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: DottedLine(
                                direction: Axis.horizontal,
                                dashColor: CommonColors.dottedLineColor,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Saturday, Oct 5",
                                  style: getAppStyle(
                                    color: CommonColors.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text(
                                  "11:00 AM - 6:00 PM",
                                  style: getAppStyle(
                                    color: CommonColors.blackColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                            kCommonSpaceV10,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: CommonColors.mBlue,
                                            size: 18,
                                          ),
                                          kCommonSpaceH5,
                                          Flexible(
                                            child: Text(
                                              "City,Region,Country",
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                color: CommonColors.blackColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                kCommonSpaceH15,
                                GestureDetector(
                                  onTap: () {
                                    push(const EnterContactRoomView());
                                  },
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Enter contact room",
                                        style: getAppStyle(
                                          color: CommonColors.appGreenColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      kCommonSpaceH5,
                                      const Icon(
                                        Icons.arrow_forward_outlined,
                                        color: CommonColors.appGreenColor,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
