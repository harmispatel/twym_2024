import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/widget/common_text_field.dart';
import 'package:twym_2024/widget/primary_button.dart';
import 'package:cached_network_image/cached_network_image.dart';

class InsideContactRoomView extends StatefulWidget {
  const InsideContactRoomView({super.key});

  @override
  State<InsideContactRoomView> createState() => _InsideContactRoomViewState();
}

class _InsideContactRoomViewState extends State<InsideContactRoomView> {
  final edSearchByKeywordController = TextEditingController();
  final edNoteController = TextEditingController();
  int selectedIndex = 0;
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
              Row(
                children: [
                  Image.asset(LocalImages.img_connect_app_logo),
                  const Spacer(),
                  kCommonSpaceH10,
                  GestureDetector(
                    onTap: () {
                      debugPrint("icon_video");
                    },
                    child: SvgPicture.asset(
                      LocalImages.icon_video,
                      colorFilter: const ColorFilter.mode(
                          CommonColors.blackColor, BlendMode.srcIn),
                    ),
                  ),
                  kCommonSpaceH10,
                  GestureDetector(
                    onTap: () {
                      debugPrint("icon_archive");
                    },
                    child: SvgPicture.asset(
                      LocalImages.icon_archive,
                      colorFilter: const ColorFilter.mode(
                          CommonColors.blackColor, BlendMode.srcIn),
                    ),
                  ),
                  kCommonSpaceH10,
                  GestureDetector(
                    onTap: () {
                      debugPrint("icon_trash");
                    },
                    child: SvgPicture.asset(
                      LocalImages.icon_trash,
                      colorFilter: const ColorFilter.mode(
                          CommonColors.blackColor, BlendMode.srcIn),
                    ),
                  ),
                ],
              ),
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
                      "Inside a Contact Room",
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
        body: ListView(
          padding: kCommonScreenPaddingH + const EdgeInsets.only(bottom: 15),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryButton(
                  height: 42,
                  borderRadius: BorderRadius.circular(50),
                  buttonColor: CommonColors.appGreenColor,
                  borderColor: CommonColors.appGreenColor,
                  label: "Collect all Business Cards",
                  lblSize: 16,
                  isShadowShow: false,
                  onPress: () {
                    //push(const InsideContactRoomView());
                  },
                ),
                kCommonSpaceV5,
                CommonTextField(
                  height: 50,
                  controller: edSearchByKeywordController,
                  bgColor: CommonColors.textFieldBgColor,
                  hintTextColor: CommonColors.hintTextColor,
                  prefixIconColor: CommonColors.hintTextColor,
                  hintFontSize: 14,
                  borderColor: Colors.transparent,
                  hintFontWeight: FontWeight.bold,
                  isPrefixIconButton: true,
                  hintText: "Search by keywords",
                ),
                kCommonSpaceV10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "6 people",
                      style: getAppStyle(
                        color: CommonColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 45,
                                      height: 45,
                                      clipBehavior: Clip.antiAlias,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: CommonColors.mGrey500
                                            .withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: CachedNetworkImage(
                                        imageUrl:
                                            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        placeholder: (context, url) =>
                                            const Padding(
                                          padding: EdgeInsets.all(12.0),
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Center(
                                          child: Icon(
                                            Icons.error_outline,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Blanche Zieme",
                                                style: getAppStyle(
                                                  color:
                                                      CommonColors.blackColor,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              kCommonSpaceH8,
                                              SvgPicture.asset(
                                                LocalImages.icon_star,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "Customer support team lead at Customer support team lead at",
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: getAppStyle(
                                              color: CommonColors.black54,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    kCommonSpaceH10,
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            showCustomDialog(context, edNoteController);
                                          },
                                          child: SvgPicture.asset(
                                            LocalImages.icon_stickynote,
                                          ),
                                        ),
                                        kCommonSpaceH8,
                                        SvgPicture.asset(
                                          LocalImages.icon_messages,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: DottedLine(
                                    direction: Axis.horizontal,
                                    dashColor: CommonColors.dottedLineColor,
                                  ),
                                ),
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
                                          height: 39,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: selectedIndex == 0
                                                ? CommonColors.appGreenColor
                                                : Colors.transparent,
                                            border: Border.all(
                                              color: CommonColors.appGreenColor,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                LocalImages.icon_linkedin,
                                                height: 16,
                                                color: selectedIndex == 0
                                                    ? CommonColors.mWhite
                                                    : CommonColors
                                                        .appGreenColor,
                                              ),
                                              kCommonSpaceH5,
                                              Text(
                                                "LinkedIn Connect",
                                                style: getAppStyle(
                                                  color: selectedIndex == 0
                                                      ? CommonColors.mWhite
                                                      : CommonColors
                                                          .appGreenColor,
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
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
                                          height: 39,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 2),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: selectedIndex == 1
                                                ? CommonColors.appGreenColor
                                                : Colors.transparent,
                                            border: Border.all(
                                              color: CommonColors.appGreenColor,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Collect Business Card",
                                              style: getAppStyle(
                                                color: selectedIndex == 1
                                                    ? CommonColors.mWhite
                                                    : CommonColors
                                                        .appGreenColor,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Container(
                                //     padding: const EdgeInsets.all(6),
                                //     color: CommonColors.appGreenColor,
                                //     child:
                                //         Image.asset(LocalImages.icon_linkedin))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
            kCommonSpaceV20,
          ],
        ),
      ),
    );
  }

  void showCustomDialog(BuildContext context, TextEditingController controller) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 20),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.38,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.clear,
                      color: CommonColors.mGrey500,
                      size: 22,
                    ),
                    onPressed: () => Navigator.of(ctx).pop(),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Note',
                    style: getAppStyle(
                      color: CommonColors.blackColor,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                kCommonSpaceV10,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add note',
                        style: getAppStyle(
                          color: CommonColors.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      CommonTextField(
                        maxLines: 5,
                        controller: controller,
                        bgColor: CommonColors.textFieldBgColor,
                        hintTextColor: CommonColors.blackColor.withOpacity(0.4),
                        prefixIconColor: CommonColors.hintTextColor,
                        hintFontSize: 14,
                        borderColor: Colors.transparent,
                        hintFontWeight: FontWeight.normal,
                        isPrefixIconButton: false,
                        hintText: "Remember to send follow-up email",
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Max 60 characters',
                          style: getAppStyle(
                            color: CommonColors.blackColor.withOpacity(0.4),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      kCommonSpaceV20,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36),
                        child: Row(
                          children: [
                            Expanded(
                              child: PrimaryButton(
                                height: 46,
                                borderRadius: BorderRadius.circular(50),
                                buttonColor: CommonColors.blackColor,
                                borderColor: CommonColors.blackColor,
                                label: "Close",
                                labelColor: CommonColors.mWhite,
                                lblSize: 16,
                                isShadowShow: false,
                                onPress: () {
                                  Navigator.of(ctx).pop();
                                },
                              ),
                            ),
                            kCommonSpaceH20,
                            Expanded(
                              child: PrimaryButton(
                                height: 46,
                                borderRadius: BorderRadius.circular(50),
                                buttonColor: CommonColors.appGreenColor,
                                borderColor: CommonColors.appGreenColor,
                                label: "Save",
                                labelColor: CommonColors.mWhite,
                                lblSize: 16,
                                isShadowShow: false,
                                onPress: () {
                                  // Implement save functionality here
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}
