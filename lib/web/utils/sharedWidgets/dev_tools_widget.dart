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
      height: ScreenSizeHelper.myToolsIconWidth(constraintType, 4),
      width: ScreenSizeHelper.myToolsIconWidth(constraintType, 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(ScreenSizeHelper.w(constraintType, .5)),
            margin: EdgeInsets.only(bottom: ScreenSizeHelper.w(constraintType, .5)),
            decoration: BoxDecoration(
              color: WebColors.backgroundToolItemColor,
              borderRadius: BorderRadius.circular(ScreenSizeHelper.w(constraintType, .5)),

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
            fontSize: ScreenSizeHelper.sp(constraintType, 14),
            fontWeight: FontWeight.w100,
            textAlign: TextAlign.center,
            maxLines: 6,
            textColor: WebColors.textWebColor,
          ),
        ],
      ),
    );
  }
}
