import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';

import '../../../widget/common_appbar.dart';
import '../../common_view/scaffold_bg.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        appBar: CommonAppBar(
          title: 'Message',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
        ),
        backgroundColor: CommonColors.mTransparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: CommonColors.mWhite,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 15, bottom: 15),
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
                                  "https://thumbs.dreamstime.com/b/portrait-young-year-old-woman-studio-shot-young-year-old-woman-red-lipstick-long-dark-hair-wearing-red-dress-99743970.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      kCommonSpaceH15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jeena ortega",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          Text(
                            "Hi!",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Just Now",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: CommonColors.primaryColor,
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "2",
                                style:
                                    TextStyle(color: Colors.white, height: 1),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 1.5,
                color: CommonColors.mGrey300,
              ),
              Container(
                color: CommonColors.mWhite,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 15, bottom: 15),
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
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1TlSJJoayGnxCWL5BvY17XtvDit8XHhbKcQ&s"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      kCommonSpaceH15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sai Pallvi",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          Text(
                            "How are you",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Just Now",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: CommonColors.primaryColor,
                                shape: BoxShape.circle),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                "3",
                                style:
                                    TextStyle(color: Colors.white, height: 1),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 1.5,
                color: CommonColors.mGrey300,
              ),
              Container(
                color: CommonColors.mWhite,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 15, bottom: 15),
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
                                  "https://image.tensorartassets.com/model_showcase/0/73e4f8f1-f78f-a050-bc21-718046697015.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      kCommonSpaceH15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Zendaya",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          Text(
                            "Go for movie?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "4:30 AM",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: CommonColors.primaryColor,
                          //       shape: BoxShape.circle),
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(5.0),
                          //     child: Text(
                          //       "2",
                          //       style: TextStyle(color: Colors.white, height: 1),
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 1.5,
                color: CommonColors.mGrey300,
              ),
              Container(
                color: CommonColors.mWhite,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 15, bottom: 15),
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
                                  "https://i.pinimg.com/736x/2d/45/ab/2d45ab6ccecab0c54b1662d44befcc5c.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      kCommonSpaceH15,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Milly bobby bown",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          Text(
                            "I am on way",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "5:00 AM",
                            style:
                                TextStyle(color: Colors.black87, fontSize: 16),
                          ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: CommonColors.primaryColor,
                          //       shape: BoxShape.circle),
                          //   child: Padding(
                          //     padding: const EdgeInsets.all(5.0),
                          //     child: Text(
                          //       "2",
                          //       style: TextStyle(color: Colors.white, height: 1),
                          //     ),
                          //   ),
                          // )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 1.5,
                color: CommonColors.mGrey300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
