import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';

import '../../../../widget/common_appbar.dart';
import '../../../common_view/scaffold_bg.dart';

class EventOrganizerProfileView extends StatefulWidget {
  const EventOrganizerProfileView({super.key});

  @override
  State<EventOrganizerProfileView> createState() =>
      _EventOrganizerProfileViewState();
}

class _EventOrganizerProfileViewState extends State<EventOrganizerProfileView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Organizer',
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          padding: kCommonScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/previews/040/751/815/non_2x/ai-generated-a-group-of-different-nationalities-men-diversity-concept-with-generative-ai-free-photo.jpeg",
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Organizer Y",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                      kCommonSpaceV30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "585",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(color: CommonColors.black54),
                              )
                            ],
                          ),
                          kCommonSpaceH15,
                          Container(
                            width: 1,
                            height: 50,
                            color: Colors.grey[300],
                          ),
                          kCommonSpaceH15,
                          Column(
                            children: [
                              Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "Events",
                                style: TextStyle(color: CommonColors.black54),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: CommonColors.black45,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ], color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.favorite_border,
                          ),
                        ),
                      ),
                      kCommonSpaceV10,
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: CommonColors.black45,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ], color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.share,
                          ),
                        ),
                      ),
                      kCommonSpaceV10,
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: CommonColors.black45,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ], color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                      kCommonSpaceV10,
                      Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: CommonColors.black45,
                            blurRadius: 3,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ], color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.email,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              kCommonSpaceV10,
              Center(
                  child: Text(
                textAlign: TextAlign.center,
                "1230 Recommendations in twym book",
                style: TextStyle(fontSize: 16),
              )),
              kCommonSpaceV15,
              Divider(
                color: CommonColors.mGrey300,
              ),
              kCommonSpaceV20,
              Text(
                "About",
                style: getAppStyle(
                  fontSize: 18,
                  color: CommonColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                maxLines: 6,
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: getAppStyle(
                  fontSize: 16,
                  color: CommonColors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kCommonSpaceV20,
              Text(
                "Events",
                style: getAppStyle(
                  fontSize: 18,
                  color: CommonColors.blackColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              kCommonSpaceV20,
              Container(
                height: 110,
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
                  padding: const EdgeInsets.all(10.0),
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.inc.com/uploaded_files/image/1920x1080/getty_473909426_129584.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        kCommonSpaceH15,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project Team Meeting",
                                style: getAppStyle(
                                  fontSize: 15,
                                  color: CommonColors.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
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
                                              fontSize: 14,
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
                                              fontSize: 14,
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
                height: 110,
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
                  padding: const EdgeInsets.all(10.0),
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsoEAuvSqUeKUR2wq3PuRc6MuYCbzDpz48VA&s"),
                                fit: BoxFit.cover),
                          ),
                        ),
                        kCommonSpaceH15,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Final Baseball Match",
                                style: getAppStyle(
                                  fontSize: 15,
                                  color: CommonColors.blackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
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
                                              fontSize: 14,
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
                                              fontSize: 14,
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
    );
  }
}
