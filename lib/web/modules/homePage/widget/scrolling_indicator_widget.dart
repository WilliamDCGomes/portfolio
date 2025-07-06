import 'package:flutter/material.dart';
import '../../../utils/stylePages/web_colors.dart';
import '../../../utils/helpers/screen_size_helper.dart';
import '../../../../generated/l10n/app_localization.dart';
import '../../../utils/sharedWidgets/text_web_widget.dart';

class ScrollingIndicatorWidget extends StatefulWidget {
  final Object constraints;

  const ScrollingIndicatorWidget({
    super.key,
    required this.constraints,
  });

  @override
  State<ScrollingIndicatorWidget> createState() => _ScrollingIndicatorWidgetState();
}

class _ScrollingIndicatorWidgetState extends State<ScrollingIndicatorWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0.0, 0.5),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          top: ScreenSizeHelper.h(widget.constraints, 10),
        ),
        child: SlideTransition(
          position: _offsetAnimation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextWebWidget(
                AppLocalizations.of(context)!.homePage_Scroll,
                fontSize: ScreenSizeHelper.sp(widget.constraints, 15),
                maxLines: 3,
                fontWeight: FontWeight.w400,
                textColor: WebColors.textWebColor,
              ),
              const Icon(
                Icons.arrow_downward_outlined,
                color: WebColors.textWebColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}