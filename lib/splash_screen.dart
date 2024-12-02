import 'dart:async';
import 'package:first_hw/shared/colors.dart';
import 'package:first_hw/shared/strings.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart'; // تأكد من استيراد ملف تسجيل الدخول

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png', height: 100),
            SizedBox(height: 20),
            Text(
              AppTexts.splashTitle,
              style: TextStyle(fontSize: 32, color: AppColors.accent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}