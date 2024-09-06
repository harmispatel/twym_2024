import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../widget/common_text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;
  String? _chosenValue = "Android";
  List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
  ];
  List<String> optionText = [
    "Events",
    "News",
    "Movie & Series",
    "Podcast",
    "Books",
    "Places",
    "Services",
  ];

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      // bgColor: CommonColors.mTransparent,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CommonColors.mTransparent,
          // appBar: CommonAppBar(
          //   title: 'twym',
          //   isTitleBold: false,
          // ),
          body: SingleChildScrollView(
            padding: kCommonScreenPadding,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(LocalImages.splash_logo),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.add_circle_outlined,
                              color: CommonColors.appGreenColor,
                              size: 20,
                            ),
                            kCommonSpaceH8,
                            Icon(
                              Icons.mail,
                              color: CommonColors.appGreenColor,
                              size: 20,
                            ),
                            kCommonSpaceH8,
                            Icon(
                              Icons.notifications_sharp,
                              color: CommonColors.appGreenColor,
                              size: 20,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_sharp,
                              size: 20,
                            ),
                            Text(
                              "Ahmedabad, India",
                              style: getAppStyle(
                                fontSize: 13,
                                color: CommonColors.blackColor,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                kCommonSpaceV5,
                CommonTextField(
                  isPrefixIconButton: true,
                  hintText: "Search or find personalized recommedations",
                  // controller: emailController,
                ),
                kCommonSpaceV5,
                SizedBox(
                  height: 32,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: optionText.length,
                    itemBuilder: (BuildContext context, int index) {
                      bool isSelected = selectedIndex == index;
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? CommonColors.appGreenColor.withOpacity(0.2)
                                  : CommonColors.mGrey200,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 2, bottom: 2),
                              child: Center(
                                child: Text(
                                  optionText[index],
                                  style: getAppStyle(
                                      color: isSelected
                                          ? CommonColors.appGreenColor
                                          : CommonColors.mGrey,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                kCommonSpaceV10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top suggestions",
                      style: getAppStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "VIEW ALL",
                      style: getAppStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: CommonColors.appGreenColor),
                    ),
                  ],
                ),
                kCommonSpaceV5,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 3),
                        child: Container(
                          width: 250,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://media.istockphoto.com/id/2060725792/photo/hands-making-heart-shape-at-music-festival.jpg?s=612x612&w=0&k=20&c=esgToc4qm1oKCQy6owHMu9ibbHN77tB_PuTtTlhIBa4="),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: CommonColors.mWhite,
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: CommonColors.mRed,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "World Music Festival",
                                    style: getAppStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "25-27 Aug,24",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Ahmedabad, in",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                kCommonSpaceV5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterImageStack(
                                          imageList: _images,
                                          showTotalCount: true,
                                          totalCount: 3,
                                          itemRadius: 35,
                                          itemCount: 3,
                                          itemBorderWidth: 2,
                                        ),
                                        Text(
                                          "32 Friends joined",
                                          style: getAppStyle(
                                            fontSize: 12,
                                            color: CommonColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                              colors: [
                                                CommonColors.primaryColor
                                                    .withOpacity(0.5),
                                                CommonColors.primaryColor,
                                              ],
                                              stops: [
                                                0.0,
                                                1.0
                                              ],
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              tileMode: TileMode.repeated)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: 15,
                                              left: 15),
                                          child: Text(
                                            "Register",
                                            style: getAppStyle(
                                                color: CommonColors.mWhite,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 3),
                        child: Container(
                          width: 250,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://st3.depositphotos.com/9999814/18094/i/450/depositphotos_180948292-stock-photo-happy-people-dance-in-nightclub.jpg",
                                            ),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: CommonColors.mWhite,
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: CommonColors.mRed,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "Travis Scott Music Concert",
                                    style: getAppStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "31 Aug,24",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Sydney, AU",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                kCommonSpaceV5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterImageStack(
                                          imageList: _images,
                                          showTotalCount: true,
                                          totalCount: 3,
                                          itemRadius: 35,
                                          itemCount: 3,
                                          itemBorderWidth: 2,
                                        ),
                                        Text(
                                          "50 Friends joined",
                                          style: getAppStyle(
                                            fontSize: 12,
                                            color: CommonColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                              colors: [
                                                CommonColors.primaryColor
                                                    .withOpacity(0.5),
                                                CommonColors.primaryColor,
                                              ],
                                              stops: [
                                                0.0,
                                                1.0
                                              ],
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              tileMode: TileMode.repeated)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: 15,
                                              left: 15),
                                          child: Text(
                                            "Register",
                                            style: getAppStyle(
                                                color: CommonColors.mWhite,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 3),
                        child: Container(
                          width: 250,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://media.istockphoto.com/id/2060725792/photo/hands-making-heart-shape-at-music-festival.jpg?s=612x612&w=0&k=20&c=esgToc4qm1oKCQy6owHMu9ibbHN77tB_PuTtTlhIBa4="),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: CommonColors.mWhite,
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: CommonColors.mRed,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "World Music Festival",
                                    style: getAppStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "25-27 Aug,24",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Ahmedabad, in",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                kCommonSpaceV5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterImageStack(
                                          imageList: _images,
                                          showTotalCount: true,
                                          totalCount: 3,
                                          itemRadius: 35,
                                          itemCount: 3,
                                          itemBorderWidth: 2,
                                        ),
                                        Text(
                                          "32 Friends joined",
                                          style: getAppStyle(
                                            fontSize: 12,
                                            color: CommonColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                              colors: [
                                                CommonColors.primaryColor
                                                    .withOpacity(0.5),
                                                CommonColors.primaryColor,
                                              ],
                                              stops: [
                                                0.0,
                                                1.0
                                              ],
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              tileMode: TileMode.repeated)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: 15,
                                              left: 15),
                                          child: Text(
                                            "Register",
                                            style: getAppStyle(
                                                color: CommonColors.mWhite,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 3),
                        child: Container(
                          width: 250,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              "https://st3.depositphotos.com/9999814/18094/i/450/depositphotos_180948292-stock-photo-happy-people-dance-in-nightclub.jpg",
                                            ),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: CommonColors.mWhite,
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: CommonColors.mRed,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "Travis Scott Music Concert",
                                    style: getAppStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "31 Aug,24",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Sydney, AU",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                kCommonSpaceV5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterImageStack(
                                          imageList: _images,
                                          showTotalCount: true,
                                          totalCount: 3,
                                          itemRadius: 35,
                                          itemCount: 3,
                                          itemBorderWidth: 2,
                                        ),
                                        Text(
                                          "50 Friends joined",
                                          style: getAppStyle(
                                            fontSize: 12,
                                            color: CommonColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                              colors: [
                                                CommonColors.primaryColor
                                                    .withOpacity(0.5),
                                                CommonColors.primaryColor,
                                              ],
                                              stops: [
                                                0.0,
                                                1.0
                                              ],
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              tileMode: TileMode.repeated)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: 15,
                                              left: 15),
                                          child: Text(
                                            "Register",
                                            style: getAppStyle(
                                                color: CommonColors.mWhite,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5, bottom: 5, right: 15, left: 3),
                        child: Container(
                          width: 250,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 170,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://media.istockphoto.com/id/2060725792/photo/hands-making-heart-shape-at-music-festival.jpg?s=612x612&w=0&k=20&c=esgToc4qm1oKCQy6owHMu9ibbHN77tB_PuTtTlhIBa4="),
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: CommonColors.mWhite,
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: const EdgeInsets.all(6.0),
                                            child: Icon(
                                              Icons.favorite_outline_outlined,
                                              color: CommonColors.mRed,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    "World Music Festival",
                                    style: getAppStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "25-27 Aug,24",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: CommonColors.primaryColor,
                                            size: 18,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Ahmedabad, in",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: getAppStyle(
                                                fontSize: 12,
                                                color: CommonColors.blackColor,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                kCommonSpaceV5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterImageStack(
                                          imageList: _images,
                                          showTotalCount: true,
                                          totalCount: 3,
                                          itemRadius: 35,
                                          itemCount: 3,
                                          itemBorderWidth: 2,
                                        ),
                                        Text(
                                          "32 Friends joined",
                                          style: getAppStyle(
                                            fontSize: 12,
                                            color: CommonColors.blackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          gradient: LinearGradient(
                                              colors: [
                                                CommonColors.primaryColor
                                                    .withOpacity(0.5),
                                                CommonColors.primaryColor,
                                              ],
                                              stops: [
                                                0.0,
                                                1.0
                                              ],
                                              begin: FractionalOffset.topCenter,
                                              end:
                                                  FractionalOffset.bottomCenter,
                                              tileMode: TileMode.repeated)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              right: 15,
                                              left: 15),
                                          child: Text(
                                            "Register",
                                            style: getAppStyle(
                                                color: CommonColors.mWhite,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
                kCommonSpaceV10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
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
                    ),
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
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Project Team Meeting",
                                    style: getAppStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    "Work-event",
                                    style: getAppStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 20,
                                      ),
                                      Text(
                                        "Ahmedabad, India",
                                        style: getAppStyle(
                                          fontSize: 10,
                                          color: CommonColors.blackColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: CommonColors.mGrey300,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 5, bottom: 5),
                                    child: Text(
                                      "Outlook Calendar",
                                      style:
                                          getAppStyle(height: 1, fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.favorite_outline_outlined,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.share,
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.thumb_down_alt_outlined,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
