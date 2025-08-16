import 'text_web_widget.dart';
import 'package:flutter/material.dart';
import '../stylePages/web_colors.dart';
import '../helpers/screen_size_helper.dart';

class DevToolsWidget extends StatelessWidget {
  final String toolImagePath;
  final String toolName;
  final Object constraintType;

  const DevToolsWidget({
    super.key,
    required this.toolImagePath,
    required this.toolName,
    required this.constraintType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSizeHelper.h(constraintType, 6),
      width: ScreenSizeHelper.h(constraintType, 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(ScreenSizeHelper.h(constraintType, .5)),
            margin: EdgeInsets.only(bottom: ScreenSizeHelper.h(constraintType, .5)),
            decoration: BoxDecoration(
              color: WebColors.backgroundToolItemColor,
              borderRadius: BorderRadius.circular(ScreenSizeHelper.h(constraintType, 1)),
            ),
            child: Image.asset(
              toolImagePath,
              height: ScreenSizeHelper.h(constraintType, 4.5),
              width: ScreenSizeHelper.h(constraintType, 4.5),
              fit: BoxFit.contain,
            ),
          ),
          TextWebWidget(
            toolName,
            fontSize: ScreenSizeHelper.sp(constraintType, 13),
            fontWeight: FontWeight.w100,
            textAlign: TextAlign.center,
            maxLines: 2,
            textColor: WebColors.textWebColor,
            textOverflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
