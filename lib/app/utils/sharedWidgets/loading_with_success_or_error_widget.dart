import 'dart:ui';
import 'package:get/get.dart';
import 'lottie_asset_widget.dart';
import 'package:flutter/material.dart';
import '../helpers/app_paths_helper.dart';
import '../../../utils/stylePages/app_colors.dart';
import '../../../utils/sharedWidgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../utils/sharedWidgets/snackbar_widget.dart';

// ignore: must_be_immutable
class LoadingWithSuccessOrErrorWidget extends StatefulWidget {
  late final RxBool loadingAnimation;
  late final RxBool isLoading;
  late final RxBool success;
  late final RxString currentState;
  late AnimationController animationController;

  LoadingWithSuccessOrErrorWidget({
    super.key,
    RxBool? internalLoadingAnimation,
  }) {
    isLoading = true.obs;
    success = false.obs;
    currentState = "".obs;
    loadingAnimation = internalLoadingAnimation ?? false.obs;
  }

  @override
  State<LoadingWithSuccessOrErrorWidget> createState() => _LoadingWithSuccessOrErrorWidgetState();

  Future startAnimation({Widget? destinationPage, bool? backPage, String? state}) async {
    loadingAnimation.value = true;
    if(state != null && state != "") currentState.value = state;
    animationController.repeat();
  }

  void updateState(String state) {
    currentState.value = state;
  }

  Future stopAnimation({Widget? destinationPage, bool? backPage, bool? justLoading, bool? fail, int? duration}) async {
    loadingAnimation.value = true;
    if (justLoading != null && justLoading) {
      await Future.delayed(const Duration(seconds: 1));
      _resetStateWithoutSuccessOrFail();
      return;
    } else if (destinationPage != null) {
      isLoading.value = false;
      success.value = true;
      await Future.delayed(Duration(seconds: duration ?? 3));
      Get.offAll(() => destinationPage);
    } else if (backPage != null && backPage) {
      isLoading.value = false;
      success.value = true;
      await Future.delayed(Duration(seconds: duration ?? 3));
      Get.back();
    } else if (fail != null && fail) {
      isLoading.value = false;
      success.value = false;
      await Future.delayed(Duration(seconds: duration ?? 3));
    } else {
      isLoading.value = false;
      success.value = true;
      await Future.delayed(Duration(seconds: duration ?? 3));
    }
    _resetState();
  }

  void _resetState() {
    isLoading.value = true;
    success.value = false;
    loadingAnimation.value = false;
    animationController.reset();
  }

  void _resetStateWithoutSuccessOrFail() {
    loadingAnimation.value = false;
    isLoading.value = true;
    animationController.reset();
  }
}

class _LoadingWithSuccessOrErrorWidgetState extends State<LoadingWithSuccessOrErrorWidget> with TickerProviderStateMixin {
  @override
  void initState() {
    widget.animationController = AnimationController(vsync: this);
    widget.animationController.duration = const Duration(seconds: 3);
    super.initState();
  }

  @override
  void dispose() {
    widget.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => PopScope(
        canPop: !widget.loadingAnimation.value,
        onPopInvokedWithResult: (didPop, result) {
          if (!didPop && widget.loadingAnimation.value) {
            SnackbarWidget(
              warningText: "Aviso",
              informationText: "Aguarde o carregamento",
              backgroundColor: AppColors.secondDefaultColor,
            );
          }
        },
        child: Visibility(
          visible: widget.loadingAnimation.value,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 100.h,
              width: 100.w,
              color: AppColors.blackTransparentColor,
              child: Center(
                child: Visibility(
                  visible: widget.isLoading.value,
                  replacement: widget.success.value
                      ? LottieAssetWidget(
                    animationPath: AppPathsHelper.successAnimation,
                    repeat: false,
                  )
                      : LottieAssetWidget(
                    animationPath: AppPathsHelper.error,
                    repeat: false,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LottieAssetWidget(
                          animationPath: AppPathsHelper.loading,
                          animationController: widget.animationController,
                        ),
                        widget.currentState.value != "" ? SizedBox(height: 2.h) : SizedBox(),
                        widget.currentState.value != "" ? TextWidget(
                            widget.currentState.value
                        ) : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
