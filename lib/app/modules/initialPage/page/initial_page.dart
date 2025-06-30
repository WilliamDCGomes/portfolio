import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/initial_page_controller.dart';
import '../../../utils/helpers/app_paths_helper.dart';
import '../../../../utils/stylePages/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../../utils/helpers/text_map_helper.dart';
import '../../../../utils/sharedWidgets/text_widget.dart';
import '../../../../utils/sharedWidgets/button_widget.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  late InitialPageController _controller;

  @override
  void initState() {
    _controller = Get.put(InitialPageController());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          child: GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: Stack(
              children: [
                Image.asset(
                  AppPathsHelper.splashScreen,
                  fit: BoxFit.cover,
                  height: 100.h,
                  width: 100.w,
                ),
                Container(
                  color: AppColors.blackTransparentColor,
                  height: 100.h,
                  width: 100.w,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        "${TextMapHelper.flavorsTitle} - William Douglas",
                        textAlign: TextAlign.center,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        maxLines: 3,
                      ),
                      SizedBox(height: 10.h,),
                      ButtonWidget(
                        hintText: TextMapHelper.initialPageMainMessage,
                        fontWeight: FontWeight.w600,
                        widthButton: 40.w,
                        onPressed: _controller.goToNextPage,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
