import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_app/core/color/app_colors.dart';
import 'package:train_app/core/font/font_size.dart';
import 'package:train_app/presentation/auth/create_screen.dart';
import 'package:train_app/widget/button_custom.dart';
import 'package:train_app/widget/textfield_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  late bool _check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.colorWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset(
                    'assets/icons/e-learning.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
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
                  controller: _password,
                  prefixIcon: const Icon(Icons.lock),
                  hintText: 'Enter Passowrd',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _check = !_check;
                      });
                    },
                    icon: Icon(
                      _check == true
                          ? Icons.visibility_off
                          : Icons.remove_red_eye,
                    ),
                  ),
                  obscureText: _check,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: FontSize.bodyText,
                          color: AppColor.colorBlue,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonCustom(
                  color: AppColor.colorBlueOld,
                  text: 'Login',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: FontSize.bodyText,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateScreen(),
                          )),
                      child: Text(
                        'Create',
                        style: TextStyle(
                          fontSize: FontSize.bodyText,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'or',
                  style: TextStyle(
                    fontSize: FontSize.bodyText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width / 6,
                    right: MediaQuery.sizeOf(context).width / 6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/images/google.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/images/image.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/images/ig.webp',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
