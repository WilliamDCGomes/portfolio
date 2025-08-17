import 'package:get/get.dart';
import 'package:visibility_detector/visibility_detector.dart';

class BodyController extends GetxController {
  late RxBool projectAllowScroll;
  late RxBool experienceAllowScroll;

  BodyController() {
    projectAllowScroll = false.obs;
    experienceAllowScroll = false.obs;
  }

  void homePageVisibilityChanged(VisibilityInfo visibilityInfo) {
    var visiblePercentage = visibilityInfo.visibleFraction * 100;

    projectAllowScroll.value = visiblePercentage < 6;
  }

  void projectPageVisibilityChanged(VisibilityInfo visibilityInfo) {
    var visiblePercentage = visibilityInfo.visibleFraction * 100;

    experienceAllowScroll.value = visiblePercentage < 6;
  }

  void experiencePageVisibilityChanged(VisibilityInfo visibilityInfo) {
    var visiblePercentage = visibilityInfo.visibleFraction * 100;

    projectAllowScroll.value = visiblePercentage < 6;
  }
}