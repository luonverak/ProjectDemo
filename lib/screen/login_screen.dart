import 'package:flutter/material.dart';
import 'package:train_app/core/color/app_colors.dart';
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
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              TextFieldCustom(
                controller: _username,
                prefixIcon: const Icon(Icons.person),
                hintText: 'Enter Username',
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
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
            ],
          ),
        ),
      ),
    );
  }
}
