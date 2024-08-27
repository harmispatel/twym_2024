import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twym_2024/utils/common_colors.dart';
import 'package:twym_2024/view/common_view/scaffold_bg.dart';
import 'package:twym_2024/view/common_view/splash/splash_view_model.dart';

import '../../../utils/local_images.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late SplashViewModel mViewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration.zero, () {
      mViewModel.attachedContext(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    mViewModel = Provider.of<SplashViewModel>(context);
    return ScaffoldBG(
      child: Scaffold(
        backgroundColor: CommonColors.mTransparent,
        body: Center(
          child: Image.asset(LocalImages.splash_logo),
        ),
      ),
    );
  }
}
