import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';

import '../../../utils/common_utils.dart';
import '../../../widget/primary_button.dart';
import 'buy_ticket/select_ticket_view.dart';
import 'event_organizer_profile/event_organizer_profile_view.dart';

class EventDetailsView extends StatefulWidget {
  const EventDetailsView({super.key});

  @override
  State<EventDetailsView> createState() => _EventDetailsViewState();
}

class _EventDetailsViewState extends State<EventDetailsView> {
  final List<String> imgList = [
    "https://img.freepik.com/premium-photo/party-dance-portrait-woman-night-club-new-years-celebration-social-with-group-music-club-happy-friends-dancing-nightclub-celebrate-friendship-girls-night_590464-115880.jpg",
    "https://mirageparties.co.uk/wp-content/uploads/2023/09/Mirage-Parties-RAGE-popup-nightclub-2-7.jpg",
    "https://st.depositphotos.com/1003448/1442/i/450/depositphotos_14423051-Girls-company-having-fun-in-the-night-club.jpg",
    "https://wallpapercave.com/wp/wp9545036.jpg",
  ];

  List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://i.pinimg.com/736x/c6/34/60/c6346030acb7a780af81803c84a06680.jpg',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://i.pinimg.com/736x/c6/34/60/c6346030acb7a780af81803c84a06680.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: kDeviceHeight,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                // autoPlay: false,
              ),
              items: imgList
                  .map((item) => Container(
                        child: Center(
                            child: Image.network(
                          item,
                          fit: BoxFit.fill,
                          height: kDeviceHeight,
                        )),
                      ))
                  .toList(),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: CommonColors.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Column(
                    children: [
                      kCommonSpaceV5,
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: CommonColors.appPinkColor,
                          ),
                        ),
                      ),
                      kCommonSpaceV8,
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.share_outlined,
                            color: CommonColors.appPinkColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: kDeviceHeight / 2,
                width: kDeviceWidth,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(45),
                    topLeft: Radius.circular(45),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: kDeviceHeight / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 3,
                            width: 40,
                            decoration: BoxDecoration(
                                color: CommonColors.mGrey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                        kCommonSpaceV10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "World Music Festival",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color:
                                    CommonColors.appGreenColor.withOpacity(0.2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: Text(
                                  "\$1150",
                                  style: TextStyle(
                                      color: CommonColors.appGreenColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                        kCommonSpaceV5,
                        Row(
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: CommonColors.appPinkColor,
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
                                    color: CommonColors.appPinkColor,
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
                            ),
                            Spacer()
                          ],
                        ),
                        kCommonSpaceV3,
                        Flexible(
                          child: Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: CommonColors.appPinkColor,
                                size: 18,
                              ),
                              Flexible(
                                child: Text(
                                  "3:00 PM - 4:30 PM",
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
                        kCommonSpaceV20,
                        Center(
                          child: FlutterImageStack(
                            imageList: _images,
                            showTotalCount: true,
                            totalCount: 5,
                            itemRadius: 35,
                            itemCount: 5,
                            itemBorderWidth: 1,
                          ),
                        ),
                        kCommonSpaceV5,
                        Center(
                          child: Text(
                            "325 Members are joined",
                            style: getAppStyle(
                              fontSize: 16,
                              color: CommonColors.blackColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "VIEW ALL",
                            style: getAppStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: CommonColors.appPinkColor),
                          ),
                        ),
                        Text(
                          "Description",
                          style: getAppStyle(
                            fontSize: 16,
                            color: CommonColors.blackColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          maxLines: 6,
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: getAppStyle(
                              fontSize: 14,
                              color: CommonColors.black54,
                              fontWeight: FontWeight.w500,
                              height: 1),
                        ),
                        kCommonSpaceV10,
                        GestureDetector(
                          onTap: () {
                            push(EventOrganizerProfileView());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://i.pinimg.com/736x/c6/34/60/c6346030acb7a780af81803c84a06680.jpg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              kCommonSpaceH8,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "World Music production",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500, height: 1),
                                  ),
                                  Text(
                                    "Event organizer",
                                    style:
                                        TextStyle(color: CommonColors.black54),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CommonColors.appGreenColor
                                              .withOpacity(0.3),
                                          border: Border.all(
                                              color: CommonColors.appGreenColor,
                                              width: 2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.mail,
                                            color: CommonColors.appGreenColor,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                      kCommonSpaceH5,
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: CommonColors.appGreenColor
                                              .withOpacity(0.3),
                                          border: Border.all(
                                              color: CommonColors.appGreenColor,
                                              width: 2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.phone,
                                            color: CommonColors.appGreenColor,
                                            size: 16,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  kCommonSpaceV5,
                                  Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Color(0xffDB1E5A),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: Text(
                                          "Recommend",
                                          style: getAppStyle(
                                              color: CommonColors.mWhite,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        kCommonSpaceV20,
                        PrimaryButton(
                          height: 50,
                          label: "Buy A Ticket",
                          lblSize: 20,
                          onPress: () {
                            push(SelectTicketView());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
