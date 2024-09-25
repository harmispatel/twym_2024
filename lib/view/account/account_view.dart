import 'dart:io';

import 'package:flutter/material.dart';
import 'package:twym_2024/utils/constant.dart';
import 'package:twym_2024/utils/local_images.dart';
import 'package:twym_2024/view/account/privacy_policy/cookies_policy_view.dart';
import 'package:twym_2024/view/account/privacy_policy/privacy_policy_view.dart';
import 'package:twym_2024/view/account/privacy_policy/terms_condition_view.dart';

import '../../utils/common_colors.dart';
import '../../utils/common_utils.dart';
import '../common_view/scaffold_bg.dart';
import 'edit_profile/edit_profile_view.dart';
import 'manage_distribution_list/manage_distribution_list_view.dart';
import 'my_event/my_event_view.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  File? selectedImage;
  String imagePath = "";

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Container(
              width: kDeviceWidth / 2.5,
              // color: Colors.deepOrangeAccent,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      push(TermsConditionView()).then((_) {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "Terms and Conditions",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Divider(
                    color: CommonColors.mGrey300,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(PrivacyPolicyView()).then((_) {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Divider(
                    color: CommonColors.mGrey300,
                  ),
                  GestureDetector(
                    onTap: () {
                      push(CookiesPolicyView()).then((_) {
                        Navigator.pop(context);
                      });
                    },
                    child: Text(
                      "Cookies Policy",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: CommonColors.mTransparent,
          body: SingleChildScrollView(
            padding: kCommonScreenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final image = await pickSinglePhoto();
                          if (image != null) {
                            setState(() {
                              selectedImage = image;
                              imagePath = image.path;
                            });
                          }
                        },
                        child: Container(
                          width: 110,
                          height: 110,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: CommonColors.primaryColor.withOpacity(0.4),
                            shape: BoxShape.circle,
                          ),
                          child: (() {
                            if (selectedImage != null) {
                              // Display the selected image if available
                              return Image.file(
                                selectedImage!,
                                fit: BoxFit.cover,
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
                              // Display a default icon if no image is available
                              return const Icon(
                                Icons.collections,
                                size: 30,
                                color: CommonColors.primaryColor,
                              );
                            }
                          })(),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'John de Silva',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 18),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: CommonColors.mWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: CommonColors.mGrey500,
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CommonColors.primaryColor,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(LocalImages.img_profile),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              kCommonSpaceH10,
                              Column(
                                children: [
                                  Text(
                                    "John de Silva",
                                    style: getAppStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Event Manager",
                                    style: getAppStyle(fontSize: 14, height: 1),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.chevron_right_rounded,
                                size: 32,
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: CommonColors.mGrey300,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CommonColors.primaryColor,
                                  image: DecorationImage(
                                      image:
                                          AssetImage(LocalImages.img_profile),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              kCommonSpaceH10,
                              Column(
                                children: [
                                  Text(
                                    "John de Silva",
                                    style: getAppStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "IT Professional",
                                    style: getAppStyle(fontSize: 14, height: 1),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.chevron_right_rounded,
                                size: 32,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                kCommonSpaceV20,
                kCommonSpaceV5,
                Container(
                  decoration: BoxDecoration(
                    color: CommonColors.mWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: CommonColors.mGrey500,
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.contact_mail_outlined,
                            color: Colors.blue),
                        title: const Text('Edit profile information'),
                        trailing: const Icon(
                          Icons.mode_edit_outlined,
                          size: 22,
                        ),
                        onTap: () {
                          push(EditProfileView());
                        },
                      ),
                      ListTile(
                        leading:
                            Icon(Icons.translate_outlined, color: Colors.blue),
                        title: Text('Language'),
                        trailing: Text('English',
                            style:
                                TextStyle(color: Colors.green, fontSize: 15)),
                      ),
                      ListTile(
                        leading: const Icon(Icons.lock_outline_rounded,
                            color: Colors.blue),
                        title: const Text('Privacy Policy'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {
                          _dialogBuilder(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.calendar_month_outlined,
                            color: Colors.blue),
                        title: const Text('My twym Calendar'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.newspaper_outlined,
                            color: Colors.blue),
                        title: const Text('My news feed'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                kCommonSpaceV20,
                kCommonSpaceV5,
                Container(
                  decoration: BoxDecoration(
                    color: CommonColors.mWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: CommonColors.mGrey500,
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.favorite_border_outlined,
                            color: Colors.blue),
                        title: const Text('My twymbook'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.notifications_none_outlined,
                            color: Colors.blue),
                        title: const Text('Notification'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.info_outline, color: Colors.blue),
                        title: const Text('About Us'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                kCommonSpaceV10,
                kCommonSpaceV50,
                kCommonSpaceV50,
                Text(
                  "Organizer profile view",
                  style: TextStyle(fontSize: 22),
                ),
                kCommonSpaceV50,
                GestureDetector(
                  onTap: () async {
                    final image = await pickSinglePhoto();
                    if (image != null) {
                      setState(() {
                        selectedImage = image;
                        imagePath = image.path;
                      });
                    }
                  },
                  child: Container(
                    width: 110,
                    height: 110,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: CommonColors.primaryColor.withOpacity(0.4),
                      shape: BoxShape.circle,
                    ),
                    child: (() {
                      if (selectedImage != null) {
                        // Display the selected image if available
                        return Image.file(
                          selectedImage!,
                          fit: BoxFit.cover,
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
                        // Display a default icon if no image is available
                        return const Icon(
                          Icons.collections,
                          size: 30,
                          color: CommonColors.primaryColor,
                        );
                      }
                    })(),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Organizer Y',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                kCommonSpaceV30,
                Container(
                  decoration: BoxDecoration(
                    color: CommonColors.mWhite,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: CommonColors.mGrey500,
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.contact_mail_outlined,
                            color: Colors.blue),
                        title: const Text('Edit profile information'),
                        trailing: const Icon(
                          Icons.mode_edit_outlined,
                          size: 22,
                        ),
                        onTap: () {
                          push(EditProfileView());
                        },
                      ),
                      ListTile(
                        leading:
                            Icon(Icons.translate_outlined, color: Colors.blue),
                        title: Text('Language'),
                        trailing: Text('English',
                            style:
                                TextStyle(color: Colors.green, fontSize: 15)),
                      ),
                      ListTile(
                        leading: const Icon(Icons.lock_outline_rounded,
                            color: Colors.blue),
                        title: const Text('Privacy Policy'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {
                          _dialogBuilder(context);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.event_available,
                            color: Colors.blue),
                        title: const Text('My Events'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {
                          push(MyEventView());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.notifications_none_outlined,
                            color: Colors.blue),
                        title: const Text('Notification'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.today, color: Colors.blue),
                        title: const Text('Create An Event'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.markunread, color: Colors.blue),
                        title: const Text('Manage Distribution lists'),
                        trailing: const Icon(
                          Icons.chevron_right_rounded,
                          size: 32,
                        ),
                        onTap: () {
                          push(ManageDistributionListView());
                        },
                      ),
                    ],
                  ),
                ),
                kCommonSpaceV50,
                kCommonSpaceV50,
                kCommonSpaceV50,
                kCommonSpaceV50,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
