import 'text_widget.dart';
import '../stylePages/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonWidget extends StatelessWidget {
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
  final Function()? onPressed;
  final Widget? child;

  const ButtonWidget(
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
        this.onPressed,
        this.child,
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightButton ?? 6.h,
      width: widthButton ?? 25.w,
      child: ElevatedButton(
        onPressed: onPressed,
        focusNode: focusNode,
        style: ElevatedButton.styleFrom(
          elevation: 2,
          backgroundColor: backgroundColor ?? AppColors.secondDefaultColor,
          side: BorderSide(
            width: .25.h,
            color: borderColor ?? AppColors.secondDefaultColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radioButton ?? 1.h),
          ),
        ),
        child: child ?? TextWidget(
          hintText ?? "",
          textColor: textColor ?? AppColors.whiteColor,
          fontSize: textSize ?? (
          MediaQuery.of(context).orientation == Orientation.portrait ?
          16.sp : 13.sp),
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
      ),
    );
  }
}