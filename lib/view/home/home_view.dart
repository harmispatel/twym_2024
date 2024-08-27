import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      // bgColor: CommonColors.mTransparent,
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        // appBar: CommonAppBar(
        //   title: 'twym',
        //   isTitleBold: false,
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(LocalImages.splash_logo),
            ],
          ),
        ),
      ),
    );
  }
}
