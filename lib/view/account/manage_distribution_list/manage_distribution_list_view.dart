import 'package:flutter/material.dart';
import 'package:twym_2024/utils/common_colors.dart';

import '../../../widget/common_appbar.dart';
import '../../common_view/scaffold_bg.dart';

class ManageDistributionListView extends StatefulWidget {
  const ManageDistributionListView({super.key});

  @override
  State<ManageDistributionListView> createState() =>
      _ManageDistributionListViewState();
}

class _ManageDistributionListViewState
    extends State<ManageDistributionListView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        appBar: CommonAppBar(
          title: 'Manage Distribution Lists',
          iconTheme: IconThemeData(color: CommonColors.blackColor),
        ),
      ),
    );
  }
}
