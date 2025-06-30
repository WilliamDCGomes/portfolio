import 'package:flutter/material.dart';
import '../../../utils/stylePages/app_colors.dart';

class TextWebWidget extends StatelessWidget {
  final String _text;
  final int? maxLines;
  final double? fontSize;
  final Color? textColor;
  final Color? backgroundTextColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextOverflow? textOverflow;
  final TextDecoration? textDecoration;

  const TextWebWidget(
      this._text, {
        super.key,
        this.maxLines,
        this.textColor,
        this.backgroundTextColor,
        this.textAlign,
        this.fontSize,
        this.fontWeight,
        this.fontStyle,
        this.fontFamily,
        this.textOverflow,
        this.textDecoration,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      maxLines: maxLines,
      overflow: textOverflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        color: textColor ?? AppColors.whiteColor,
        backgroundColor: backgroundTextColor,
        fontSize: fontSize ?? 35,
        fontWeight: fontWeight ?? FontWeight.normal,
        decoration: textDecoration,
        fontStyle: fontStyle,
        fontFamily: fontFamily,
      ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
