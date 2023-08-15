// ignore_for_file: non_constant_identifier_names

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
            padding: const EdgeInsets.all(25),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Image.asset("assets/images/logo.png"),
                const Text(
                  "Login to Continue",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                const Spacer(),
                const SizedBox(
                    width: 500,
                    child: newTextField(
                        hintText: "Email ID", icon: Icon(Icons.man_3))),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 500,
                  child: newTextField(
                    hintText: "Password",
                    icon: Icon(Icons.key),
                    hide_char: true,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      print('Hello Bro!');
                    },
                    child: const Text(
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
                                    borderRadius: BorderRadius.circular(100))
                                    )),
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
                TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed('/home/signup');
                    },
                    child: Text("Don't have an account? Create one!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class newTextField extends StatefulWidget {
  final String hintText;
  final Icon icon;
  final bool hide_char;

  const newTextField(
      {super.key,
      required this.hintText,
      this.hide_char = false,
      required this.icon});

  @override
  State<newTextField> createState() => _newTextFieldState();
}

class _newTextFieldState extends State<newTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return TextField(
        decoration: InputDecoration(
            prefixIcon: widget.icon,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: AppColors.textfield_color,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white.withOpacity(0.15)),
        obscureText: widget.hide_char);
  }
}
