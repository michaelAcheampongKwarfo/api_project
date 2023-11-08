import 'package:flutter/material.dart';
import 'package:web_api_project/widgets/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  const AppText(
      {super.key,
      required this.text,
      this.fontSize,
      this.color,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 18.0,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.blackColor,
        fontFamily: 'Times New Roman',
      ),
    );
  }
}
