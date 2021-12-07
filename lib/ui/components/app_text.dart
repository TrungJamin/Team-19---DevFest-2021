import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? data;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final double? height;
  final TextAlign? textAlign;
  final Paint? foreground;
  final String? fontFamily;
  final int? maxLines;

  const AppText(
    this.data, {
    Key? key,
    this.fontWeight,
    this.fontSize = 14,
    this.color = Colors.white,
    this.height,
    this.textAlign,
    this.foreground,
    this.fontFamily,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      maxLines: maxLines,
      style: TextStyle(
        height: height,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        fontFamily: fontFamily,
      ),
      textAlign: textAlign,
    );
  }
}
