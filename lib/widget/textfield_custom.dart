import 'package:flutter/material.dart';
import 'package:train_app/core/font/font_size.dart';

// ignore: must_be_immutable
class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    required this.controller,
    required this.obscureText,
  });
  final Icon prefixIcon;
  final String hintText;
  final IconButton? suffixIcon;
  var controller = TextEditingController();
  late bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(fontSize: FontSize.bodyText),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue, width: 2),
        ),
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: FontSize.bodyText),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
    );
  }
}
