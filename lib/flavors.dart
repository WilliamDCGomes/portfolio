import 'enums/flavor_enum.dart';
import 'package:flutter/material.dart';
import 'utils/helpers/text_map_helper.dart';
import 'app/modules/initialPage/page/initial_page.dart';
import 'package:william_portifolio/web/modules/bodyPage/page/body_page.dart';

class F {
  static FlavorEnum? appFlavor;

  static String get title {
    switch (appFlavor) {
      case FlavorEnum.web:
        return '${TextMapHelper.flavorsTitle} - William Douglas WEB';
      case FlavorEnum.qa:
        return '${TextMapHelper.flavorsTitle} - William Douglas QA';
      case FlavorEnum.prod:
        return '${TextMapHelper.flavorsTitle} - William Douglas';
      default:
        return '${TextMapHelper.flavorsTitle} - William Douglas DEV';
    }
  }

  static String get extension {
    switch (appFlavor) {
      case FlavorEnum.web:
        return 'WEB';
      case FlavorEnum.qa:
        return 'QA';
      case FlavorEnum.prod:
        return 'PROD';
      default:
        return 'DEV';
    }
  }

  static bool get isDev => F.appFlavor == FlavorEnum.dev;
  static bool get isQa => F.appFlavor == FlavorEnum.qa;
  static bool get isProd => F.appFlavor == FlavorEnum.prod;
  static bool get isWeb => F.appFlavor == FlavorEnum.web;

  static String get baseURL {
    switch (appFlavor) {
      case FlavorEnum.web:
        return '';
      case FlavorEnum.qa:
        return '';
      case FlavorEnum.prod:
        return '';
      default:
        return '';
    }
  }

  static Widget get initialScreen {
    if(isWeb) {
      return const BodyPage();
    }
    else {
      switch (appFlavor) {
        case FlavorEnum.qa:
          return const InitialPage();
        case FlavorEnum.prod:
          return const InitialPage();
        default:
          return const InitialPage();
      }
    }
  }
}
