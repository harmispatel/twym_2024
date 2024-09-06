import 'package:flutter/material.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../utils/common_colors.dart';
import '../../utils/constant.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
        child: Scaffold(
      backgroundColor: CommonColors.mTransparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "create",
              style: getAppStyle(fontSize: 22),
            )
          ],
        ),
      ),
    ));
  }
}
