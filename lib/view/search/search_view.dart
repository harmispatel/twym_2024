import 'package:flutter/material.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../utils/common_colors.dart';
import '../../utils/constant.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
                "Search",
                style: getAppStyle(fontSize: 22),
              )
            ],
          ),
        ),
      ),
    );
  }
}
