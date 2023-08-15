// ignore_for_file: prefer_const_constructors

import 'package:arxperience/pages/login.dart';
import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.left,
        ),
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      backgroundColor: AppColors.primary,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        //width: ,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 20,
            ),
            
            newTextField(hintText: 'First Name', icon: Icon(Icons.person)),
            Spacer(),
            newTextField(hintText: 'Last Name', icon: Icon(Icons.person)),
            Spacer(),
            newTextField(hintText: 'Email ID', icon: Icon(Icons.mail)),
            Spacer(),
            newTextField(
              hintText: 'Password',
              icon: Icon(Icons.key),
              hide_char: true,
            ),
            Spacer(),
            newTextField(
              hintText: 'Confirm Password',
              icon: Icon(Icons.key),
              hide_char: true,
            ),
            Spacer(),

             Center(
               child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/home');
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.secondary),
                              shape: 
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100))),
                      
                    )
               ),
             )
          ]),
        ),
      ),
    );
  }
}
