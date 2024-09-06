import 'package:flutter/material.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../utils/common_colors.dart';
import '../../utils/constant.dart';

class TwymBookView extends StatefulWidget {
  const TwymBookView({super.key});

  @override
  State<TwymBookView> createState() => _TwymBookViewState();
}

class _TwymBookViewState extends State<TwymBookView> {
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
                "twym book",
                style: getAppStyle(fontSize: 22),
              )
            ],
          ),
        ),
      ),
    );
  }
}
