// ignore_for_file: non_constant_identifier_names

import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Page0 extends StatelessWidget {
  const Page0({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //resizeToAvoidBottomInset: false,
      //backgroundColor: Color.fromARGB(255, 92, 75, 81),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: new AssetImage("assets/images/background.png"),
        fit:BoxFit.fill),
        ),
         child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Spacer(),
                    const Spacer(),
                    const Spacer(),
                
                    Image.asset("assets/images/logo.png"),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        child: Text(
                          "Login to continue",
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(AppColors.primary)),
                      ),
                        const Spacer(),
                        const Spacer()
                  ],
                ),
              ),
            ),
          ),
      ),
    );


  }
}
