import 'package:flutter/material.dart';

import '../../utils/common_colors.dart';
import '../../utils/local_images.dart';

class ScaffoldBG extends StatelessWidget {
  final Widget? child;
  final Color? bgColor;
  const ScaffoldBG({
    super.key,
    this.child,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: bgColor ?? CommonColors.mWhite,
        image: const DecorationImage(
            image: AssetImage(LocalImages.bg), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}
