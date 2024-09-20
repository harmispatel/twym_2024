import 'package:flutter/material.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';

import '../../utils/common_colors.dart';
import '../../widget/common_appbar.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
// Correctly scoped here

  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
          backgroundColor: CommonColors.mTransparent,
          appBar: CommonAppBar(
            title: 'Search',
          ),
          body: Center(
            child: Text(
              "Search View",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          )),
    );
  }
}
