import 'text_map_mobile_helper.dart';
import '../../../utils/stylePages/app_colors.dart';
import '../../../utils/sharedWidgets/snackbar_widget.dart';

class AppCloseHelper {
  static DateTime? backPushed;
  static bool verifyCloseScreen() {
    DateTime now = DateTime.now();
    if (backPushed == null || (backPushed != null && now.difference(backPushed!) > const Duration(seconds: 2))) {
      backPushed = now;
      SnackbarWidget(
        warningText: TextMapMobileHelper.appCloseHelperWarning,
        informationText: TextMapMobileHelper.appCloseHelperTnformationText,
        backgroundColor: AppColors.defaultColor,
      );
      return false;
    }
    return true;
  }
}