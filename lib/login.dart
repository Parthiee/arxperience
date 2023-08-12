import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 92, 75, 81),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 150),
          Image.asset("assets/images/logo.png"),
          SizedBox(height: 20),
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
                child: Text("Forgotten Password?")),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Log in")),
          SizedBox(height: 30),
          Text(
            "or sign in using",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
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
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)))),
            ),
          )
        ],
      ),
    );
  }
}
