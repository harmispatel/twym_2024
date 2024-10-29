import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';

class EventLocationView extends StatefulWidget {
  const EventLocationView({super.key});

  @override
  State<EventLocationView> createState() => _EventLocationViewState();
}

class _EventLocationViewState extends State<EventLocationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.mWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(LocalImages.img_connect_app_logo),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Badge.count(
                    count: 3,
                    child: const Icon(
                      Icons.mail_outline_outlined,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Badge.count(
                    count: 3,
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert_outlined,
                    color: Colors.black,
                    size: 28,
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
                    "Check In to an Event location",
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
        padding: kCommonScreenPadding,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10) +
                  const EdgeInsets.only(left: 15, right: 4),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        clipBehavior: Clip.antiAlias,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: CommonColors.mGrey500.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D",
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => const Center(
                            child: Icon(
                              Icons.error_outline,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Real Estate Professionals Conference",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: getAppStyle(
                                      color: CommonColors.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.more_vert_outlined,
                                  color: Colors.black,
                                  size: 28,
                                ),
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.more_vert_outlined,
                                  color: Colors.black,
                                  size: 28,
                                ),
                              ],
                            ),

                            Text(
                              "Sat, Nov 15 • 11:00 AM - 6:00 PM",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: getAppStyle(
                                color: CommonColors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Real Estate Professionals Ass.",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: getAppStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const SizedBox(width: 10),
                                Text(
                                  "Subscribed",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: getAppStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
