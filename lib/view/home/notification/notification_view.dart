import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';

import '../../../widget/common_appbar.dart';
import '../../common_view/scaffold_bg.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Notification',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Unread",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                NotificationCard(
                  profileImageUrl:
                      'https://image.tensorartassets.com/cdn-cgi/image/anim=false,plain=false,w=2048,f=jpeg,q=85/posts/images/684058496613784590/a7a64855-8400-4d0b-9856-0a623694deb4.jpg',
                  name: "Sophie Devine",
                  actionText: "started following you",
                  time: "Just now",
                  hasActionButtons: true,
                ),
                NotificationCard(
                  profileImageUrl:
                      'https://i.pinimg.com/736x/9b/aa/4d/9baa4db52e2217f3a188cb1ae16b91b4.jpg',
                  name: "Ellyse Perry",
                  actionText: "invited you to Designer's Club Meetup",
                  time: "Just now",
                  hasActionButtons: true,
                ),
                SizedBox(height: 20),
                Text(
                  "This Week",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                NotificationCard(
                  profileImageUrl:
                      'https://images.filmibeat.com/ph-big/2017/07/_149906239512.jpg',
                  name: "Shreyanka Patil",
                  actionText: "started following you",
                  time: "1 day ago",
                  hasActionButtons: true,
                ),
                NotificationCard(
                  profileImageUrl:
                      'https://images.filmibeat.com/ph-big/2017/09/divi-prasanna_150582046810.jpg',
                  name: "Smriti Mandhana",
                  actionText: "invited you to TS Art Exhibition",
                  time: "1 day ago",
                  hasActionButtons: true,
                ),
                NotificationCard(
                  profileImageUrl:
                      'https://images.filmibeat.com/ph-big/2017/09/divi-prasanna_150582046830.jpg',
                  name: "Jemimah Rodrigues",
                  actionText: "invited you to Final Baseball Match",
                  time: "3 days ago",
                  hasActionButtons: true,
                ),
                NotificationCard(
                  profileImageUrl:
                      'https://southindianactress.in/wp-content/uploads/2017/01/Prasanna-Stills-At-Inkenti-Nuvve-Cheppu-Platinum-Disc-Function-featured.jpg',
                  name: "Alice Capsey",
                  actionText: "started following you",
                  time: "5 days ago",
                  hasActionButtons: true,
                ),
                NotificationCard(
                  profileImageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT31-PanOkvOpO5lrimTZD_TIR60PMRKTwnRp38Dsv3PXMYXJn4thDbudMbX89ArVg-xz0&usqp=CAU',
                  name: "Amelia Kerr",
                  actionText: "started following you",
                  time: "5 days ago",
                  hasActionButtons: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NotificationCard extends StatefulWidget {
  final String profileImageUrl;
  final String name;
  final String actionText;
  final String time;
  final bool hasActionButtons;

  NotificationCard({
    required this.profileImageUrl,
    required this.name,
    required this.actionText,
    required this.time,
    this.hasActionButtons = false,
  });

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  bool isExpanded = false;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(widget.profileImageUrl),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: widget.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: " ${widget.actionText}",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.time,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                      isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                ),
              ],
            ),
            if (isExpanded)
              Column(
                children: [
                  if (widget.hasActionButtons)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: CommonColors.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 10, bottom: 10),
                              child: Text(
                                "Reject",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                                color:
                                    CommonColors.primaryColor.withOpacity(0.3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 10, bottom: 10),
                              child: Text(
                                "Accept",
                                style: TextStyle(
                                    color: CommonColors.primaryColor,
                                    fontSize: 14),
                              ),
                            ),
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
  }
}
