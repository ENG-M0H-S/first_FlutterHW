import 'package:first_hw/shared/colors.dart';
import 'package:first_hw/shared/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          AppTexts.mainPage,
          style: TextStyle(fontSize: 24, color: AppColors.accent),
        ),
      ),
    );
  }
}
