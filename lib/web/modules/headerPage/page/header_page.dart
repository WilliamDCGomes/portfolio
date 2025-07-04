import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/header_controller.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../../generated/l10n/app_localization.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';
import 'package:william_portifolio/web/utils/stylePages/web_colors.dart';

class HeaderPage extends StatefulWidget {
  const HeaderPage({super.key});

  @override
  State<HeaderPage> createState() => _HeaderPageState();
}

class _HeaderPageState extends State<HeaderPage> {
  late HeaderController _controller;

  @override
  void initState() {
    _controller = Get.put(HeaderController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            height: ScreenSizeHelper.fullH(constraints, 100, 550),
            child: Stack(
              children: [
                Container(
                  color: WebColors.backgroundColor,
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    WebPathsHelper.homeBackgroundRight,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    WebPathsHelper.homeBackgroundBottom,
                    fit: BoxFit.fill,
                    width: ScreenSizeHelper.w(constraints, 100),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    WebPathsHelper.homeBackgroundTop,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: ScreenSizeHelper.h(constraints, 3),
                      horizontal: ScreenSizeHelper.w(constraints, 5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          WebPathsHelper.logo,
                          height: ScreenSizeHelper.h(constraints, 7),
                          width: ScreenSizeHelper.h(constraints, 7),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextWebWidget(
                                  AppLocalizations.of(context)!.headerPage_TabHome,
                                  fontSize: ScreenSizeHelper.sp(constraints, 12),
                                  textColor: WebColors.textWebColor,
                                ),
                                SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                TextWebWidget(
                                  AppLocalizations.of(context)!.headerPage_TabExperience,
                                  fontSize: ScreenSizeHelper.sp(constraints, 12),
                                  textColor: WebColors.textWebColor,
                                ),
                                SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                TextWebWidget(
                                  AppLocalizations.of(context)!.headerPage_TabProject,
                                  fontSize: ScreenSizeHelper.sp(constraints, 12),
                                  textColor: WebColors.textWebColor,
                                ),
                                SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                TextWebWidget(
                                  AppLocalizations.of(context)!.headerPage_TabEducation,
                                  fontSize: ScreenSizeHelper.sp(constraints, 12),
                                  textColor: WebColors.textWebColor,
                                ),
                              ],
                            ),
                            SizedBox(width: ScreenSizeHelper.w(constraints, 4)),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(WebPathsHelper.brazilFlag),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: WebColors.textWebColor,
                                  size: ScreenSizeHelper.h(constraints, 3),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}
