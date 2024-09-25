import 'package:flutter/material.dart';

import '../../../utils/common_colors.dart';
import '../../../utils/constant.dart';
import '../../../widget/common_appbar.dart';
import '../../../widget/common_text_field.dart';
import '../../../widget/primary_button.dart';
import '../../common_view/scaffold_bg.dart';

class AllEventsview extends StatefulWidget {
  const AllEventsview({super.key});

  @override
  State<AllEventsview> createState() => _AllEventsviewState();
}

class _AllEventsviewState extends State<AllEventsview> {
  String? _chosenValue = "Android";
  double start = 300.0;
  double end = 600.0;
  bool? value = false;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      barrierColor: Colors.black38,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Filter",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  kCommonSpaceV10,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                color:
                                    CommonColors.appGreenColor.withOpacity(0.2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, right: 15, top: 2, bottom: 2),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.toc,
                                        size: 20,
                                        color: CommonColors.appGreenColor,
                                      ),
                                      Text(
                                        " All",
                                        style: getAppStyle(
                                            color: CommonColors.appGreenColor,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              focusColor: Colors.white,
                              value: _chosenValue,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                fillColor: CommonColors.mGrey200,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: CommonColors.blackColor,
                              ),
                              items: <String>[
                                'Android',
                                'IOS',
                                'Flutter',
                                'Node',
                                'Java',
                                'Python',
                                'PHP',
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
                                  _chosenValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              focusColor: Colors.white,
                              value: _chosenValue,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                fillColor: CommonColors.mGrey200,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: CommonColors.blackColor,
                              ),
                              items: <String>[
                                'Android',
                                'IOS',
                                'Flutter',
                                'Node',
                                'Java',
                                'Python',
                                'PHP',
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
                                  _chosenValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              focusColor: Colors.white,
                              value: _chosenValue,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                fillColor: CommonColors.mGrey200,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: CommonColors.blackColor,
                              ),
                              items: <String>[
                                'Android',
                                'IOS',
                                'Flutter',
                                'Node',
                                'Java',
                                'Python',
                                'PHP',
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
                                  _chosenValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              focusColor: Colors.white,
                              value: _chosenValue,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                fillColor: CommonColors.mGrey200,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: CommonColors.blackColor,
                              ),
                              items: <String>[
                                'Android',
                                'IOS',
                                'Flutter',
                                'Node',
                                'Java',
                                'Python',
                                'PHP',
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
                                  _chosenValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: SizedBox(
                            width: 120,
                            height: 40,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              focusColor: Colors.white,
                              value: _chosenValue,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: CommonColors.mGrey200),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                filled: true,
                                fillColor: CommonColors.mGrey200,
                              ),
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: CommonColors.blackColor,
                              ),
                              items: <String>[
                                'Android',
                                'IOS',
                                'Flutter',
                                'Node',
                                'Java',
                                'Python',
                                'PHP',
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
                                  _chosenValue = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kCommonSpaceV15,
                  Text(
                    "Date",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  LabeledTextField(
                    suffixIcon: Icon(Icons.calendar_month),
                    hintText: "Choose from calender",
                    isShadow: false,
                    // controller: emailController,
                  ),
                  kCommonSpaceV15,
                  Text(
                    "Location",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  LabeledTextField(
                    suffixIcon: Icon(Icons.location_on_outlined),
                    hintText: "Current location or type",
                    isShadow: false,
                    // controller: emailController,
                  ),
                  kCommonSpaceV20,
                  Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (bool? newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),
                      Text(
                        "Free event only",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  kCommonSpaceV15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price range",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1),
                      ),
                      Text(
                        "\$${start.toStringAsFixed(2)} - " +
                            "\$${end.toStringAsFixed(2)}",
                        style: const TextStyle(
                            fontSize: 18.0,
                            color: CommonColors.appGreenColor,
                            height: 1),
                      ),
                    ],
                  ),
                  RangeSlider(
                    values: RangeValues(start, end),
                    labels: RangeLabels(start.toString(), end.toString()),
                    onChanged: (value) {
                      setState(() {
                        start = value.start;
                        end = value.end;
                      });
                    },
                    min: 0.0,
                    max: 900.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1),
                      ),
                      Text(
                        "900",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1),
                      ),
                    ],
                  ),
                  kCommonSpaceV20,
                  PrimaryButton(
                    height: 50,
                    label: "Apply",
                    lblSize: 20,
                    onPress: () {
                      Navigator.pop(context);
                    },
                  ),
                  kCommonSpaceV20,
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'Events',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () => _showBottomSheet(context),
                child: Icon(
                  Icons.menu_sharp,
                ),
              ),
            )
          ],
        ),
        backgroundColor: CommonColors.mTransparent,
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SizedBox(
                                            width: 180,
                                            child: Text(
                                              "Project Team Meeting",
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mTransparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mTransparent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5, left: 5, top: 5, bottom: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: CommonColors.mWhite,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: CommonColors.mGrey500,
                              offset: const Offset(
                                2.0,
                                5.0,
                              ),
                              blurRadius: 5.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            ), //BoxShadow
                          ],
                        ),
                        child: Center(
                          child: Text(
                            "Today",
                            style: getAppStyle(
                                color: CommonColors.primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      kCommonSpaceH10,
                      Container(
                        height: 100,
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
                          padding: const EdgeInsets.all(10.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Icon(
                                            Icons.favorite_outline_outlined,
                                            size: 16,
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
                                              "Work-event",
                                              style: getAppStyle(
                                                fontSize: 10,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ),
                                          Spacer(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    CommonColors.primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.check_circle,
                                                      size: 10,
                                                      color:
                                                          CommonColors.mWhite,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 2),
                                                      child: Text(
                                                        "Following",
                                                        style: getAppStyle(
                                                            color: CommonColors
                                                                .mWhite,
                                                            height: 1,
                                                            fontSize: 8),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.share,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 5),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: CommonColors.mGrey200,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 8,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text(
                                                  "Outlook Calendar",
                                                  style: getAppStyle(
                                                      height: 1, fontSize: 8),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.thumb_down_alt_outlined,
                                            size: 16,
                                          ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
