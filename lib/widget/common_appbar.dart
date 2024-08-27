import 'package:flutter/material.dart';

import '../utils/common_colors.dart';
import '../utils/constant.dart';

class CommonAppBar extends StatelessWidget implements PreferredSize {
  final String? title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool? centerTitle;
  final bool? isTitleBold;
  final Color? bgColor;
  final bool? automaticallyImplyLeading;
  final IconThemeData? iconTheme;

  const CommonAppBar({
    this.leading,
    required this.title,
    this.actions,
    this.centerTitle,
    this.isTitleBold = false,
    this.bgColor,
    this.automaticallyImplyLeading,
    this.iconTheme,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor ?? CommonColors.primaryColor,
      elevation: 0,
      iconTheme: iconTheme,
      leading: leading,
      centerTitle: centerTitle ?? true,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      title: Text(
        title!,
        style: isTitleBold!
            ? getAppStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: CommonColors.blackColor,
              )
            : getAppStyle(
                fontSize:
                    Theme.of(context).appBarTheme.titleTextStyle!.fontSize,
                fontWeight:
                    Theme.of(context).appBarTheme.titleTextStyle!.fontWeight,
                color: CommonColors.blackColor,
              ),
      ),
      actions: actions ?? [],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
