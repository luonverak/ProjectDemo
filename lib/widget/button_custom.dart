import 'package:flutter/material.dart';
import 'package:train_app/core/color/app_colors.dart';
import 'package:train_app/core/font/font_size.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({
    super.key,
    required this.color,
    required this.text,
  });
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(
          fontSize: FontSize.titleText,
          color: AppColor.colorWhite,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
