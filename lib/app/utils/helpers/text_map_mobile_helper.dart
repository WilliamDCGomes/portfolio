import 'package:get/get.dart';
import '../../../generated/l10n/app_localization.dart';

class TextMapMobileHelper {
  static String get appCloseHelperWarning => AppLocalizations.of(Get.context!)?.appCloseHelper_Warning ?? "";
  static String get appCloseHelperTnformationText => AppLocalizations.of(Get.context!)?.appCloseHelper_TnformationText ?? "";
  static String get appInformationPopupButtonOk => AppLocalizations.of(Get.context!)?.informationPopup_ButtonOk ?? "";
}