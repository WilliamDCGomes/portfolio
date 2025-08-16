import 'package:flutter/material.dart';
import '../../web/utils/helpers/screen_size_helper.dart';

class SocialMediaButtonWidget extends StatelessWidget {
  final Object constraintType;
  final String imagePath;
  final Function() onTap;

  const SocialMediaButtonWidget({
    super.key,
    required this.constraintType,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        height: ScreenSizeHelper.h(constraintType, 5),
      ),
    );
  }
}
