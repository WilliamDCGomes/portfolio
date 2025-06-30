import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class PlatformTypeHelper {
  static bool isPhone(BuildContext context){
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide < 600;
  }

  static bool isTablet(BuildContext context){
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide >= 600;
  }

  static bool isWeb(){
    return kIsWeb;
  }

  static bool isWatch(BuildContext context){
    var shortestSide = MediaQuery.of(context).size.shortestSide;
    return shortestSide < 250;
  }

  static bool isAndroid(){
    return !kIsWeb && Platform.isAndroid;
  }

  static bool isIOS(){
    return !kIsWeb && Platform.isIOS;
  }
}