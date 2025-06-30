import 'text_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../stylePages/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SnackbarWidget {
  final String warningText;
  final String informationText;
  final Color backgroundColor;
  final int? maxLine;
  final bool withPopup;

  SnackbarWidget({
    required this.warningText,
    required this.informationText,
    required this.backgroundColor,
    this.maxLine,
    this.withPopup = false,
  }) {
    if(withPopup) {
      showSnackBarWithPopup(informationText);
    }
    else{
      showSnackBar(informationText);
    }
  }

  void showSnackBar(String informationText) => Get.snackbar(
    '',
    '',
    titleText: TextWidget(
      warningText,
      textColor: AppColors.whiteColor,
      fontSize: 14.sp,
      textAlign: TextAlign.center,
      maxLines: 1,
      fontWeight: FontWeight.bold,
    ),
    messageText: TextWidget(
      informationText,
      textColor: AppColors.whiteColor,
      fontSize: 14.sp,
      textAlign: TextAlign.center,
      maxLines: maxLine ?? 1,
      fontWeight: FontWeight.bold,
    ),
    duration: const Duration(seconds: 4),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: backgroundColor,
    margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
  );

  void showSnackBarWithPopup(String informationText) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextWidget(
              warningText,
              textColor: AppColors.whiteColor,
              fontSize: 14.sp,
              textAlign: TextAlign.center,
              maxLines: 1,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 2.h),
            TextWidget(
              informationText,
              textColor: AppColors.whiteColor,
              fontSize: 14.sp,
              textAlign: TextAlign.center,
              maxLines: maxLine ?? 1,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 4),
      ),
    );
  }
}