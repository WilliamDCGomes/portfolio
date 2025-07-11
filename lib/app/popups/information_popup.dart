import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../utils/stylePages/app_colors.dart';
import '../../utils/sharedWidgets/text_widget.dart';
import '../../utils/sharedWidgets/button_widget.dart';
import '../utils/helpers/text_map_mobile_helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InformationPopup extends StatefulWidget {
  final String warningMessage;
  final Widget? title;
  final double? fontSize;
  final Color? titleColor;
  final Color? popupColor;
  final bool success;

  const InformationPopup({
    super.key,
    required this.warningMessage,
    this.title,
    this.fontSize,
    this.titleColor,
    this.popupColor,
    this.success = false,
  });

  @override
  State<InformationPopup> createState() => _InformationPopupState();
}

class _InformationPopupState extends State<InformationPopup> {
  late bool showPopup;

  @override
  void initState() {
    showPopup = false;
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 150));
      setState(() {
        showPopup = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Visibility(
        visible: showPopup,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.h),
          ),
          child: Container(
            width: 75.w,
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(1.h),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 90.w,
                  padding: EdgeInsets.all(1.h),
                  decoration: BoxDecoration(
                    color: widget.popupColor ?? (widget.success ? AppColors.greenColor : AppColors.redColor),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(1.h),
                      topLeft: Radius.circular(1.h),
                    ),
                  ),
                  child: widget.title ?? TextWidget(
                    TextMapMobileHelper.appCloseHelperWarning.toUpperCase(),
                    textColor: widget.titleColor ?? AppColors.whiteColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TextWidget(
                        widget.warningMessage,
                        textColor: AppColors.blackColor,
                        fontSize: widget.fontSize ?? 16.sp,
                        fontWeight: FontWeight.bold,
                        maxLines: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: Center(
                          child: ButtonWidget(
                            hintText: TextMapMobileHelper.appInformationPopupButtonOk,
                            heightButton: 5.h,
                            widthButton: 32.w,
                            fontWeight: FontWeight.bold,
                            backgroundColor: widget.popupColor ?? (widget.success ? AppColors.greenColor : AppColors.redColor),
                            borderColor: widget.popupColor ?? (widget.success ? AppColors.greenColor : AppColors.redColor),
                            onPressed: () => Get.back(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}