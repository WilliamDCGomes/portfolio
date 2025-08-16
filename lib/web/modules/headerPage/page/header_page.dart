import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/header_controller.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../../generated/l10n/app_localization.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';
import 'package:william_portifolio/web/utils/stylePages/web_colors.dart';

class HeaderPage extends StatefulWidget {
  final Object constraints;

  const HeaderPage({
    super.key,
    required this.constraints,
  });

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
    return SizedBox(
      height: ScreenSizeHelper.h(widget.constraints, 10),
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: ScreenSizeHelper.h(widget.constraints, 3),
            horizontal: ScreenSizeHelper.w(widget.constraints, 5),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                WebPathsHelper.logo,
                height: ScreenSizeHelper.logoW(widget.constraints, 7),
                width: ScreenSizeHelper.logoW(widget.constraints, 7),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextWebWidget(
                        AppLocalizations.of(context)!.headerPage_TabHome,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.headerPage_TabExperience,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.headerPage_TabProject,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
                        textColor: WebColors.textWebColor,
                      ),
                      SizedBox(width: ScreenSizeHelper.w(widget.constraints, 2)),
                      TextWebWidget(
                        AppLocalizations.of(context)!.headerPage_TabEducation,
                        fontSize: ScreenSizeHelper.sp(widget.constraints, 12),
                        textColor: WebColors.textWebColor,
                      ),
                    ],
                  ),
                  SizedBox(width: ScreenSizeHelper.w(widget.constraints, 4)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        WebPathsHelper.brazilFlag,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: WebColors.textWebColor,
                        size: ScreenSizeHelper.h(widget.constraints, 3),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
