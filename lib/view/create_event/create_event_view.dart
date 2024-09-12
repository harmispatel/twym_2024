import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../utils/common_colors.dart';
import '../../utils/common_utils.dart';
import '../../utils/global_variables.dart';
import '../../widget/common_appbar.dart';
import '../../widget/common_text_field.dart';
import '../../widget/primary_button.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  File? selectedImage1;
  String imagePath1 = "";
  File? selectedImage2;
  String imagePath2 = "";
  File? selectedImage3;
  String imagePath3 = "";
  File? selectedImage4;
  String imagePath4 = "";
  String? selectedEvent = "Choose event type";
  String? selectedEventLocation = "Choose location type";
  String? selectedFee = "Choose fee";
  final eventDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Create an Event',
          isTitleBold: false,
        ),
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () async {
                  final image = await pickSinglePhoto();
                  if (image != null) {
                    setState(() {
                      selectedImage1 = image;
                      imagePath1 = image.path;
                    });
                  }
                },
                child: SizedBox(
                  height: 150,
                  width: kDeviceWidth / 1,
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(15),
                    color: Color(0xffEBB02D),
                    strokeWidth: 2,
                    dashPattern: [6, 3],
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors
                            .transparent, // Ensure the child has a transparent background
                      ),
                      child: (() {
                        if (selectedImage1 != null) {
                          // Display the selected image if available
                          return Center(
                            child: Image.file(
                              selectedImage1!,
                              fit: BoxFit.cover,
                            ),
                          );
                        }
                        // else if (globalUserMaster?.image != null) {
                        //   // Display the user's stored image if available
                        //   return Image.network(
                        //     globalUserMaster!.image!,
                        //     fit: BoxFit.cover,
                        //   );
                        // }
                        else {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Color(0xffEBB02D),
                                ),
                                Text(
                                  "Add Event Image",
                                  style: getAppStyle(fontSize: 18, height: 1),
                                ),
                              ],
                            ),
                          );
                        }
                      })(),
                    ),
                  ),
                ),
              ),
              kCommonSpaceV15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final image = await pickSinglePhoto();
                      if (image != null) {
                        setState(() {
                          selectedImage2 = image;
                          imagePath2 = image.path;
                        });
                      }
                    },
                    child: SizedBox(
                      height: 120,
                      width: kDeviceWidth / 3.5,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(15),
                        color: Color(0xffEBB02D),
                        strokeWidth: 1.5,
                        dashPattern: [6, 3],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors
                                .transparent, // Ensure the child has a transparent background
                          ),
                          child: (() {
                            if (selectedImage2 != null) {
                              // Display the selected image if available
                              return Center(
                                child: Image.file(
                                  selectedImage2!,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                            // else if (globalUserMaster?.image != null) {
                            //   // Display the user's stored image if available
                            //   return Image.network(
                            //     globalUserMaster!.image!,
                            //     fit: BoxFit.cover,
                            //   );
                            // }
                            else {
                              return Center(
                                child: Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Color(0xffEBB02D),
                                ),
                              );
                            }
                          })(),
                        ),
                      ),
                    ),
                  ),
                  kCommonSpaceH15,
                  GestureDetector(
                    onTap: () async {
                      final image = await pickSinglePhoto();
                      if (image != null) {
                        setState(() {
                          selectedImage3 = image;
                          imagePath3 = image.path;
                        });
                      }
                    },
                    child: SizedBox(
                      height: 120,
                      width: kDeviceWidth / 3.5,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(15),
                        color: Color(0xffEBB02D),
                        strokeWidth: 1.5,
                        dashPattern: [6, 3],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors
                                .transparent, // Ensure the child has a transparent background
                          ),
                          child: (() {
                            if (selectedImage3 != null) {
                              // Display the selected image if available
                              return Center(
                                child: Image.file(
                                  selectedImage3!,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                            // else if (globalUserMaster?.image != null) {
                            //   // Display the user's stored image if available
                            //   return Image.network(
                            //     globalUserMaster!.image!,
                            //     fit: BoxFit.cover,
                            //   );
                            // }
                            else {
                              return Center(
                                child: Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Color(0xffEBB02D),
                                ),
                              );
                            }
                          })(),
                        ),
                      ),
                    ),
                  ),
                  kCommonSpaceH15,
                  GestureDetector(
                    onTap: () async {
                      final image = await pickSinglePhoto();
                      if (image != null) {
                        setState(() {
                          selectedImage4 = image;
                          imagePath4 = image.path;
                        });
                      }
                    },
                    child: SizedBox(
                      height: 120,
                      width: kDeviceWidth / 3.5,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(15),
                        color: Color(0xffEBB02D),
                        strokeWidth: 1.5,
                        dashPattern: [6, 3],
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors
                                .transparent, // Ensure the child has a transparent background
                          ),
                          child: (() {
                            if (selectedImage4 != null) {
                              // Display the selected image if available
                              return Center(
                                child: Image.file(
                                  selectedImage4!,
                                  fit: BoxFit.cover,
                                ),
                              );
                            }
                            // else if (globalUserMaster?.image != null) {
                            //   // Display the user's stored image if available
                            //   return Image.network(
                            //     globalUserMaster!.image!,
                            //     fit: BoxFit.cover,
                            //   );
                            // }
                            else {
                              return Center(
                                child: Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Color(0xffEBB02D),
                                ),
                              );
                            }
                          })(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV10,
              Divider(
                color: CommonColors.mGrey300,
              ),
              Text(
                "Event Details",
                style: getAppStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              kCommonSpaceV10,
              Text(
                "Event Name",
                style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              CommonTextField(
                hintText: "Name",
                // controller: emailController,
              ),
              kCommonSpaceV10,
              Text(
                "Event Type",
                style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              kCommonSpaceV5,
              DropdownButtonFormField<String>(
                isExpanded: true,
                focusColor: Colors.white,
                value: selectedEvent,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  filled: true,
                  fillColor: CommonColors.mWhite,
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CommonColors.blackColor,
                ),
                items: <String>[
                  'Choose event type',
                  'Birth Day',
                  'Marriage',
                  'Collage party',
                  'Family function',
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
                    selectedEvent = value;
                  });
                },
              ),
              kCommonSpaceV10,
              Text(
                "Event date",
                style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              CommonTextField(
                onTap: () async {
                  DateTime? picked = await showDatePicker(
                    context: mainNavKey.currentContext!,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(
                        Duration(days: 365 * 10)), // 10 years in the future
                  );
                  if (picked != null) {
                    setState(() {
                      eventDateController.text =
                          CommonUtils.dateFormatddMMYYYY(picked.toString());
                    });
                  } else {
                    print(picked);
                  }
                },
                hintText: "Select event date",
                controller: eventDateController,
                readOnly: true,
                isIconButton: true,
                suffixIcon: Icons.calendar_month_outlined,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event start time",
                          style: getAppStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        CommonTextField(
                          hintText: "Start time",
                          suffixIcon: Icons.access_time,
                          isIconButton: true,
                          // controller: emailController,
                        ),
                      ],
                    ),
                  ),
                  kCommonSpaceH10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Event end time",
                          style: getAppStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        CommonTextField(
                          hintText: "End time",
                          suffixIcon: Icons.access_time,
                          isIconButton: true,
                          // controller: emailController,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              kCommonSpaceV5,
              Text(
                "Event Location Type",
                style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              kCommonSpaceV10,
              DropdownButtonFormField<String>(
                isExpanded: true,
                focusColor: Colors.white,
                value: selectedEventLocation,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  filled: true,
                  fillColor: CommonColors.mWhite,
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CommonColors.blackColor,
                ),
                items: <String>[
                  'Choose location type',
                  'Ahmedabad',
                  'Baroda',
                  'Rajkot',
                  'Mumbai',
                  'Delhi',
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
                    selectedEventLocation = value;
                  });
                },
              ),
              kCommonSpaceV10,
              Text(
                "Event Address",
                style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              CommonTextField(
                hintText: "Event address",
                // controller: emailController,
              ),
              kCommonSpaceV10,
              Text(
                "Fee",
                style: getAppStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              kCommonSpaceV10,
              DropdownButtonFormField<String>(
                isExpanded: true,
                focusColor: Colors.white,
                value: selectedFee,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide:
                        BorderSide(color: CommonColors.mGrey200, width: 2),
                  ),
                  filled: true,
                  fillColor: CommonColors.mWhite,
                ),
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: CommonColors.blackColor,
                ),
                items: <String>[
                  'Choose fee',
                  '270 / 1 Person',
                  '280 / 1 Person',
                  '300 / 1 Person',
                  '350 / 1 Person',
                  '400 / 1 Person',
                  'Free',
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
                    selectedFee = value;
                  });
                },
              ),
              kCommonSpaceV10,
              PrimaryButton(
                height: 50,
                label: "Submit",
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
