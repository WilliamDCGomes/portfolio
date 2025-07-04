import 'package:flutter/material.dart';
import '../stylePages/web_colors.dart';
import '../helpers/screen_size_helper.dart';
import 'package:william_portifolio/web/utils/sharedWidgets/text_web_widget.dart';

class ButtonWebWidget extends StatelessWidget {
  final String? hintText;
  final double? textSize;
  final double? heightButton;
  final double? widthButton;
  final double? radioButton;
  final FontWeight? fontWeight;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final FocusNode? focusNode;
  final EdgeInsets? padding;
  final Function()? onPressed;
  final Widget? child;
  final Object constraintType;

  const ButtonWebWidget(
      { super.key,
        this.hintText,
        this.textSize,
        this.heightButton,
        this.widthButton,
        this.radioButton,
        this.fontWeight,
        this.backgroundColor,
        this.borderColor,
        this.textColor,
        this.focusNode,
        this.padding,
        this.onPressed,
        this.child,
        required this.constraintType,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton ?? ScreenSizeHelper.h(constraintType, 6),
      width: widthButton ?? ScreenSizeHelper.w(constraintType, 10),
      child: ElevatedButton(
        onPressed: onPressed,
        focusNode: focusNode,
        style: ElevatedButton.styleFrom(
          elevation: 2,
          padding: padding,
          backgroundColor: backgroundColor ?? WebColors.secondDefaultColor,
          side: BorderSide(
            width: ScreenSizeHelper.h(constraintType, .25),
            color: borderColor ?? WebColors.secondDefaultColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radioButton ?? ScreenSizeHelper.h(constraintType, 1)),
          ),
        ),
        child: child ?? TextWebWidget(
          hintText ?? "",
          textColor: textColor ?? WebColors.whiteColor,
          fontSize: textSize ?? (
          MediaQuery.of(context).orientation == Orientation.portrait ?
          ScreenSizeHelper.sp(constraintType, 16) : ScreenSizeHelper.sp(constraintType, 13)),
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}