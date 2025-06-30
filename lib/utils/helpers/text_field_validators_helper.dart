

import 'text_map_helper.dart';

class TextFieldValidatorsHelper {
  static String? defaultValidator(String? value, {String? errorMessage}) {
    if (value == null) {
      return errorMessage ?? TextMapHelper.textFieldValidatorsHelperRequiredField;
    } else if (value.isEmpty) {
      return errorMessage ?? TextMapHelper.textFieldValidatorsHelperRequiredField;
    }
    return null;
  }

  static String? minimumNumberValidation(String? value, int size, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return "${TextMapHelper.textFieldValidatorsHelperFirstMinimumNumberValidation} $fieldName";
    }
    if (value.trim().length < size) {
      return "$fieldName ${TextMapHelper.textFieldValidatorsHelperSecondMinimumNumberValidation}";
    }
    return null;
  }

  static String? emailValidation(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextMapHelper.textFieldValidatorsHelperFirstEmailValidation;
    }
    if (!value.trim().isValidEmail()) {
      return TextMapHelper.textFieldValidatorsHelperSecondEmailValidation;
    }
    return null;
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
