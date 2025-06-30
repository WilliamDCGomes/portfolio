import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../controller/home_controller.dart';
import '../../../../enums/social_media_enum.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../utils/helpers/web_paths_helper.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../../generated/l10n/app_localization.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';
import '../../../utils/sharedWidgets/dev_tools_widget.dart';
import '../../../utils/sharedWidgets/button_web_widget.dart';
import '../../../utils/sharedWidgets/custom_scroll_widget.dart';
import '../../../../utils/sharedWidgets/social_media_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _controller;

  @override
  void initState() {
    _controller = Get.put(HomeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: ScreenSizeHelper.h(constraints, 90),
              child: ScrollConfiguration(
                behavior: CustomScrollWidget(),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: ScreenSizeHelper.fullH(constraints, 100, 550),
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: ScreenSizeHelper.w(constraints, 10)),
                              child: SizedBox(
                                width: ScreenSizeHelper.w(constraints, 60),
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 5)),
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_FirstIntroduction,
                                      fontSize: ScreenSizeHelper.sp(constraints, 50),
                                      maxLines: 4,
                                      fontWeight: FontWeight.bold,
                                      textColor: const Color(0XFFFAFAFA),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 1)),
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_SecondIntroduction,
                                      fontSize: ScreenSizeHelper.sp(constraints, 30),
                                      maxLines: 4,
                                      fontWeight: FontWeight.normal,
                                      textColor: const Color(0XFFFAFAFA),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 6)),
                                    SizedBox(
                                      width: ScreenSizeHelper.w(constraints, 60),
                                      child: TextWebWidget(
                                        AppLocalizations.of(context)!.homePage_ThirdIntroduction,
                                        fontSize: ScreenSizeHelper.sp(constraints, 25),
                                        maxLines: 8,
                                        fontWeight: FontWeight.normal,
                                        textColor: const Color(0XFFFAFAFA),
                                      ),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 6)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Expanded(
                                          child: SizedBox(),
                                        ),
                                        SocialMediaButtonWidget(
                                          constraintType: constraints,
                                          imagePath: WebPathsHelper.instagramIcon,
                                          onTap: () => _controller.openSocialMedia(SocialMediaEnum.instagram),
                                        ),
                                        SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                        SocialMediaButtonWidget(
                                          constraintType: constraints,
                                          imagePath: WebPathsHelper.youtubeIcon,
                                          onTap: () => _controller.openSocialMedia(SocialMediaEnum.youtube),
                                        ),
                                        SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                        SocialMediaButtonWidget(
                                          constraintType: constraints,
                                          imagePath: WebPathsHelper.tiktokIcon,
                                          onTap: () => _controller.openSocialMedia(SocialMediaEnum.tiktok),
                                        ),
                                        SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                        SocialMediaButtonWidget(
                                          constraintType: constraints,
                                          imagePath: WebPathsHelper.linkedinIcon,
                                          onTap: () => _controller.openSocialMedia(SocialMediaEnum.linkedin),
                                        ),
                                        SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                        SocialMediaButtonWidget(
                                          constraintType: constraints,
                                          imagePath: WebPathsHelper.githubIcon,
                                          onTap: () => _controller.openSocialMedia(SocialMediaEnum.github),
                                        ),
                                        SizedBox(width: ScreenSizeHelper.w(constraints, 2)),
                                        SocialMediaButtonWidget(
                                          constraintType: constraints,
                                          imagePath: WebPathsHelper.gmailIcon,
                                          onTap: () => _controller.openSocialMedia(SocialMediaEnum.gmail),
                                        ),
                                        Expanded(
                                          child: SizedBox(),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: ScreenSizeHelper.h(constraints, 15)),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            TextWebWidget(
                                              AppLocalizations.of(context)!.homePage_Scroll,
                                              fontSize: ScreenSizeHelper.sp(constraints, 15),
                                              maxLines: 3,
                                              fontWeight: FontWeight.w400,
                                              textColor: const Color(0XFFFAFAFA),
                                            ),
                                            const Icon(
                                              Icons.arrow_downward_outlined,
                                              color: Color(0XFFFAFAFA),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenSizeHelper.fullH(constraints, 100, 550),
                      child: Container(
                        color: Color(0XFF0D0E1B),
                        child: Stack(
                          children: [
                            Column(
                              spacing: 0,
                              children: [
                                Container(
                                  color: Color(0XFF0D0E1B),
                                  height: ScreenSizeHelper.h(constraints, 50),
                                ),
                                Container(
                                  color: Color(0XFF030712),
                                  height: ScreenSizeHelper.h(constraints, 50),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                vertical: ScreenSizeHelper.h(constraints, 3),
                                horizontal: ScreenSizeHelper.w(constraints, 5),
                              ),
                              child: SizedBox(
                                width: ScreenSizeHelper.w(constraints, 40),
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_SecondPart_FirstIntroduction,
                                      fontSize: ScreenSizeHelper.sp(constraints, 30),
                                      maxLines: 2,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.start,
                                      textColor: const Color(0XFF2377B5),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 2)),
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_SecondPart_SecondIntroduction,
                                      fontSize: ScreenSizeHelper.sp(constraints, 20),
                                      maxLines: 4,
                                      fontWeight: FontWeight.normal,
                                      textAlign: TextAlign.start,
                                      textColor: const Color(0XFFFAFAFA),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 4)),
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_SecondPart_ThirdIntroduction,
                                      fontSize: ScreenSizeHelper.sp(constraints, 18),
                                      maxLines: 12,
                                      fontWeight: FontWeight.w100,
                                      textAlign: TextAlign.start,
                                      textColor: const Color(0XFFFAFAFA),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 2)),
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_SecondPart_FourthIntroduction,
                                      fontSize: ScreenSizeHelper.sp(constraints, 18),
                                      maxLines: 2,
                                      fontWeight: FontWeight.w100,
                                      textAlign: TextAlign.start,
                                      textColor: const Color(0XFFFAFAFA),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 3)),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: ButtonWebWidget(
                                        constraintType: constraints,
                                        backgroundColor: const Color(0XFF2377B5),
                                        borderColor: const Color(0XFF2377B5),
                                        padding: EdgeInsets.zero,
                                        widthButton: ScreenSizeHelper.w(constraints, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Image.asset(
                                              WebPathsHelper.resumeIcon,
                                              height: ScreenSizeHelper.w(constraints, 1.5),
                                            ),
                                            SizedBox(
                                              width: ScreenSizeHelper.w(constraints, .5),
                                            ),
                                            TextWebWidget(
                                              AppLocalizations.of(context)!.homePage_Resume,
                                              fontSize: ScreenSizeHelper.w(constraints, 1),
                                              maxLines: 2,
                                              fontWeight: FontWeight.w100,
                                              textAlign: TextAlign.start,
                                              textColor: const Color(0XFFFAFAFA),
                                            ),
                                          ],
                                        ),
                                        onPressed: () {

                                        },
                                      ),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 8)),
                                    TextWebWidget(
                                      AppLocalizations.of(context)!.homePage_MyTools,
                                      maxLines: 3,
                                      fontSize: ScreenSizeHelper.sp(constraints, 18),
                                      fontWeight: FontWeight.w100,
                                      textAlign: TextAlign.start,
                                      textColor: const Color(0XFFFAFAFA),
                                    ),
                                    SizedBox(height: ScreenSizeHelper.h(constraints, 2)),
                                    SizedBox(
                                      width: ScreenSizeHelper.w(constraints, 50),
                                      child: CarouselSlider.builder(
                                        carouselController: _controller.carouselController,
                                        itemCount: _controller.chatGptContentList.length,
                                        options: CarouselOptions(
                                          viewportFraction: 1 / 7,
                                          height: ScreenSizeHelper.w(constraints, 22),
                                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                                          autoPlay: true,
                                          enableInfiniteScroll: true,
                                          autoPlayInterval: const Duration(seconds: 2),
                                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                        ),
                                        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
                                          return DevToolsWidget(
                                            toolName: _controller.chatGptContentList[itemIndex].toolName,
                                            toolImagePath: _controller.chatGptContentList[itemIndex].toolImagePath,
                                            constraintType: constraints,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: ScreenSizeHelper.w(constraints, 34),
                                padding: EdgeInsets.symmetric(
                                  vertical: ScreenSizeHelper.w(constraints, 3),
                                  horizontal: ScreenSizeHelper.w(constraints, 5),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        color: const Color(0XFF2377B5),
                                        height: ScreenSizeHelper.w(constraints, 25),
                                        width: ScreenSizeHelper.w(constraints, 18.75),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: ScreenSizeHelper.w(constraints, 1),
                                          right: ScreenSizeHelper.w(constraints, 1),
                                        ),
                                        child: Image.asset(
                                          WebPathsHelper.imageProfile,
                                          height: ScreenSizeHelper.w(constraints, 25),
                                          width: ScreenSizeHelper.w(constraints, 18.75),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
