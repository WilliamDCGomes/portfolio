import 'package:get/get.dart';
import '../../../generated/l10n/app_localization.dart';

class TextMapHelper {
  static String get initialPageMainMessage => AppLocalizations.of(Get.context!)?.initialPageMainMessage ?? "";
  static String get textFieldValidatorsHelperRequiredField => AppLocalizations.of(Get.context!)?.textFieldValidatorsHelper_RequiredField ?? "";
  static String get textFieldValidatorsHelperFirstMinimumNumberValidation => AppLocalizations.of(Get.context!)?.textFieldValidatorsHelper_FirstMinimumNumberValidation ?? "";
  static String get textFieldValidatorsHelperSecondMinimumNumberValidation => AppLocalizations.of(Get.context!)?.textFieldValidatorsHelper_SecondMinimumNumberValidation ?? "";
  static String get textFieldValidatorsHelperFirstEmailValidation => AppLocalizations.of(Get.context!)?.textFieldValidatorsHelper_FirstEmailValidation ?? "";
  static String get textFieldValidatorsHelperSecondEmailValidation => AppLocalizations.of(Get.context!)?.textFieldValidatorsHelper_SecondEmailValidation ?? "";
  static String get flavorsTitle => AppLocalizations.of(Get.context!)?.flavors_Title ?? "";
}