import 'package:get/get.dart';
import 'package:visibility_detector/visibility_detector.dart';

class BodyController extends GetxController {
  late RxBool allowScroll;

  BodyController() {
    allowScroll = false.obs;
  }

  void onVisibilityChanged(VisibilityInfo visibilityInfo) {
    var visiblePercentage = visibilityInfo.visibleFraction * 100;

    allowScroll.value = visiblePercentage < 6;
  }
}