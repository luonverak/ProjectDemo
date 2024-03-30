import 'package:flutter/material.dart';
import 'package:train_app/core/color/app_colors.dart';
import 'package:train_app/core/font/font_size.dart';
import 'package:train_app/widget/button_custom.dart';
import 'package:train_app/widget/textfield_custom.dart';

class CreateScreen extends StatelessWidget {
  CreateScreen({super.key});
  final _username = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                const Spacer(),
                Text(
                  'Create an account',
                  style: TextStyle(
                    fontSize: FontSize.titleText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFieldCustom(
                    controller: _username,
                    prefixIcon: const Icon(Icons.email),
                    hintText: 'Enter Email',
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldCustom(
                    controller: _phone,
                    prefixIcon: const Icon(Icons.phone),
                    hintText: 'Enter Phone',
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldCustom(
                    controller: _password,
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Enter Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFieldCustom(
                    controller: _confirmPassword,
                    prefixIcon: const Icon(Icons.lock),
                    hintText: 'Enter Confirm Password',
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ButtonCustom(
                    color: AppColor.colorBlueOld,
                    text: 'Create',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
