import 'package:get/get.dart';
import 'package:web/web.dart' as web;
import 'package:flutter/material.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import '../controller/body_controller.dart';
import '../../homePage/page/home_page.dart';
import '../widget/body_children_widget.dart';
import '../../headerPage/page/header_page.dart';
import '../../projectPage/page/project_page.dart';
import '../../../../generated/l10n/app_localization.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:william_portifolio/web/utils/stylePages/web_colors.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  late BodyController _controller;

  @override
  void initState() {
    _controller = Get.put(BodyController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    web.document.title = AppLocalizations.of(context)!.headerPage_TabHome;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Material(
          color: WebColors.backgroundColor,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Stack(
              children: [
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
                Column(
                  children: [
                    HeaderPage(
                      constraints: constraints,
                    ),
                    Expanded(
                      child: BodyChildrenWidget(
                        constraints: constraints,
                        childrenWidget: [
                          VisibilityDetector(
                            key: Key("HomePageWidget"),
                            onVisibilityChanged: _controller.onVisibilityChanged,
                            child: HomePage(
                              constraints: constraints,
                            ),
                          ),
                          Obx(
                            () => ProjectPage(
                              constraints: constraints,
                              allowScroll: _controller.allowScroll.value,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}