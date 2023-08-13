import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      //backgroundColor: Color.fromARGB(255, 92, 75, 81),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(),
                Image.asset("assets/images/logo.png"),
                Text(
                  "Login to Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                Spacer(),
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        //border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(100)),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.15)),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.grey),
                          //border: OutlineInputBorder(
                          // borderRadius: BorderRadius.circular(100)),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.15))),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      print('Hello Bro!');
                    },
                    child: Text(
                      "Forgotten Password?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/home');
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.secondary)),
                  ),
                ),
                Spacer(),
                Text(
                  "or sign in using",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Login using Google",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)))),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          height: 35,
                          width: 35,
                          //color Color.fromARGB(255, 230, 2, 2).withOpacity(0),
                        ),
                        SizedBox(width: 30),
                        Text(
                          "Login using Facebook",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)))),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
