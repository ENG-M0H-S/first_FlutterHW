import 'package:first_hw/shared/CustomButton.dart';
import 'package:first_hw/shared/CustomTextFiled.dart';
import 'package:first_hw/shared/colors.dart';
import 'package:first_hw/shared/strings.dart';
import 'package:flutter/material.dart';
import 'three_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => ThreePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppTexts.loginTitle,
                    style: TextStyle(fontSize: 32, color: AppColors.primary, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  MohTextField(
                    label: AppTexts.usernameLabel,
                    controller: _usernameController,
                  ),
                  SizedBox(height: 10),
                  MohTextField(
                    label: AppTexts.passwordLabel,
                    controller: _passwordController,
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  MohButton(
                    widget: Text(AppTexts.loginButton, style: TextStyle(fontSize: 18)),
                    voidCallback: _login,
                    shColor: AppColors.primary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}