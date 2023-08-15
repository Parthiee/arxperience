// ignore_for_file: prefer_const_constructors

import 'package:arxperience/pages/login.dart';
import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(children: [
        newTextField(hintText: 'First Name', icon: Icon(Icons.person)),
      ]),
    );
  }
}
