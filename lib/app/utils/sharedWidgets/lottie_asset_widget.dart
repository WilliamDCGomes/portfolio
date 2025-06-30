import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LottieAssetWidget extends StatelessWidget {
  final String animationPath;
  final AnimationController? animationController;
  final bool repeat;
  final double? height;
  final double? width;
  final BoxFit? fit;

  const LottieAssetWidget(
      { super.key,
        required this.animationPath,
        this.animationController,
        this.repeat = true,
        this.height,
        this.width,
        this.fit,
      });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animationPath,
      repeat: repeat,
      height: height ?? 20.h,
      width: width ?? 20.h,
      fit: fit ?? BoxFit.fill,
      controller: animationController,
    );
  }
}