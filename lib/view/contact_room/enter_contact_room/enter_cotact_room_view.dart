// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:twym_2024/utils/common_colors.dart';
// import 'package:twym_2024/utils/constant.dart';
// import 'package:twym_2024/utils/local_images.dart';
//
// class EnterContactRoomView extends StatefulWidget {
//   const EnterContactRoomView({super.key});
//
//   @override
//   State<EnterContactRoomView> createState() => _EnterContactRoomViewState();
// }
//
// class _EnterContactRoomViewState extends State<EnterContactRoomView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: CommonColors.mWhite,
//       appBar: AppBar(
//         toolbarHeight: 100,
//         automaticallyImplyLeading: false,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(LocalImages.img_connect_app_logo),
//             kCommonSpaceV10,
//             GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: const Row(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Icon(
//                     Icons.arrow_back_outlined,
//                     color: CommonColors.blackColor,
//                     size: 20,
//                   ),
//                   // kCommonSpaceH5,
//                   // Text(
//                   //   "Contact Rooms",
//                   //   style: getAppStyle(
//                   //     color: CommonColors.blackColor,
//                   //     fontSize: 16,
//                   //     fontWeight: FontWeight.bold,
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: ListView(
//         padding: kCommonScreenPaddingH + const EdgeInsets.only(bottom: 15),
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Project Team Meeting",
//                 style: getAppStyle(
//                   color: CommonColors.blackColor,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               kCommonSpaceV8,
//               Text(
//                 "Work-event",
//                 style: getAppStyle(
//                   color: CommonColors.black54,
//                   fontSize: 16,
//                   fontWeight: FontWeight.normal,
//                 ),
//               ),
//               kCommonSpaceV8,
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.calendar_month_outlined,
//                     color: CommonColors.mBlue,
//                     size: 20,
//                   ),
//                   kCommonSpaceH5,
//                   Text(
//                     "Saturday, Oct 5",
//                     style: getAppStyle(
//                       color: CommonColors.blackColor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                 ],
//               ),
//               kCommonSpaceV8,
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.access_time_outlined,
//                     color: CommonColors.mBlue,
//                     size: 20,
//                   ),
//                   kCommonSpaceH5,
//                   Text(
//                     "11:00 AM - 6:00 PM",
//                     style: getAppStyle(
//                       color: CommonColors.blackColor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                 ],
//               ),
//               kCommonSpaceV8,
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Icon(
//                     Icons.location_on_outlined,
//                     color: CommonColors.mBlue,
//                     size: 20,
//                   ),
//                   kCommonSpaceH5,
//                   Flexible(
//                     child: Text(
//                       "Conference Room B, abc xyz company, City,Region,Country",
//                       maxLines: 5,
//                       overflow: TextOverflow.ellipsis,
//                       style: getAppStyle(
//                         color: CommonColors.blackColor,
//                         fontSize: 16,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               kCommonSpaceV50,
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Attendees",
//                     style: getAppStyle(
//                       color: CommonColors.blackColor,
//                       fontSize: 14,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   ListView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     padding: const EdgeInsets.only(top: 10),
//                     itemCount: 20,
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {},
//                         child: Column(
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Container(
//                                   width: 45,
//                                   height: 45,
//                                   clipBehavior: Clip.antiAlias,
//                                   margin: const EdgeInsets.only(right: 10),
//                                   decoration: BoxDecoration(
//                                       color: CommonColors.mGrey500
//                                           .withOpacity(0.1),
//                                       borderRadius: BorderRadius.circular(8)),
//                                   child: CachedNetworkImage(
//                                     imageUrl:
//                                         'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
//                                     imageBuilder: (context, imageProvider) =>
//                                         Container(
//                                       decoration: BoxDecoration(
//                                         image: DecorationImage(
//                                           image: imageProvider,
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),
//                                     placeholder: (context, url) =>
//                                         const Padding(
//                                       padding: EdgeInsets.all(12.0),
//                                       child: Center(
//                                         child: CircularProgressIndicator(
//                                           strokeWidth: 2,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                     errorWidget: (context, url, error) =>
//                                         const Center(
//                                       child: Icon(
//                                         Icons.error_outline,
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Expanded(
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Blanche Zieme",
//                                         style: getAppStyle(
//                                           color: CommonColors.blackColor,
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                       Text(
//                                         "Customer support team lead atCustomer support team lead at",
//                                         maxLines: 1,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: getAppStyle(
//                                           color: CommonColors.black54,
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.normal,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             kCommonSpaceV10,
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "View all",
//                     style: getAppStyle(
//                       color: CommonColors.appGreenColor,
//                       fontSize: 16,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   kCommonSpaceH5,
//                   const Icon(
//                     Icons.keyboard_arrow_down_outlined,
//                     color: CommonColors.mBlue,
//                     size: 18,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/utils/common_utils.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/contact_room/inside_contact_room/inside_contact_room_view.dart';
import 'package:twym_2024/widget/primary_button.dart';

class EnterContactRoomView extends StatefulWidget {
  const EnterContactRoomView({super.key});

  @override
  State<EnterContactRoomView> createState() => _EnterContactRoomViewState();
}

class _EnterContactRoomViewState extends State<EnterContactRoomView> {
  final List<Map<String, String>> attendees = List.generate(
    20,
    (index) => {
      "name": "Attendee ${index + 1}",
      "position": "Position of Attendee ${index + 1}",
      "imageUrl":
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
    },
  );

  bool showAllAttendees = false;

  @override
  Widget build(BuildContext context) {
    final displayedAttendees =
        showAllAttendees ? attendees : attendees.take(3).toList();
    return Scaffold(
      backgroundColor: CommonColors.mWhite,
      appBar: AppBar(
        toolbarHeight: 100,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(LocalImages.img_connect_app_logo),
            kCommonSpaceV10,
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    color: CommonColors.blackColor,
                    size: 20,
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
              Text(
                "Project Team Meeting",
                style: getAppStyle(
                  color: CommonColors.blackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kCommonSpaceV8,
              Text(
                "Work-event",
                style: getAppStyle(
                  color: CommonColors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              kCommonSpaceV8,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.calendar_month_outlined,
                    color: CommonColors.mBlue,
                    size: 20,
                  ),
                  kCommonSpaceH5,
                  Text(
                    "Saturday, Oct 5",
                    style: getAppStyle(
                      color: CommonColors.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              kCommonSpaceV8,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.access_time_outlined,
                    color: CommonColors.mBlue,
                    size: 20,
                  ),
                  kCommonSpaceH5,
                  Text(
                    "11:00 AM - 6:00 PM",
                    style: getAppStyle(
                      color: CommonColors.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              kCommonSpaceV8,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: CommonColors.mBlue,
                    size: 18,
                  ),
                  kCommonSpaceH5,
                  Flexible(
                    child: Text(
                      "Conference Room B, abc xyz company, City,Region,Country",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: getAppStyle(
                        color: CommonColors.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              kCommonSpaceV40,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Attendees",
                    style: getAppStyle(
                      color: CommonColors.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(top: 14),
                    itemCount: displayedAttendees.length,
                    itemBuilder: (context, index) {
                      final attendee = displayedAttendees[index];
                      return GestureDetector(
                        onTap: () {},
                        child: Column(
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
                                    color:
                                        CommonColors.mGrey500.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: CachedNetworkImage(
                                    imageUrl: attendee["imageUrl"]!,
                                    imageBuilder: (context, imageProvider) =>
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
                                      Text(
                                        attendee["name"]!,
                                        style: getAppStyle(
                                          color: CommonColors.blackColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      //kCommonSpaceV3,
                                      Text(
                                        attendee["position"]!,
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
                              ],
                            ),
                            kCommonSpaceV14,
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    showAllAttendees = !showAllAttendees;
                  });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      showAllAttendees ? "Show less" : "View all",
                      style: getAppStyle(
                        color: CommonColors.appGreenColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    kCommonSpaceH5,
                    Icon(
                      showAllAttendees
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      color: CommonColors.appGreenColor,
                      size: 26,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
              vertical: 8,
              horizontal: MediaQuery.of(context).size.width * 0.3,
            ) +
            const EdgeInsets.only(bottom: 16),
        child: PrimaryButton(
          height: 42,
          borderRadius: BorderRadius.circular(50),
          buttonColor: CommonColors.appGreenColor,
          borderColor: CommonColors.appGreenColor,
          label: "Past Activity",
          isShadowShow: false,
          lblSize: 16,
          onPress: () {
            push(const InsideContactRoomView());
          },
        ),
      ),
    );
  }
}
