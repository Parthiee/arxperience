// ignore_for_file: non_constant_identifier_names

import 'package:arxperience/styles/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //String email, password;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomInset: false,
      //backgroundColor: Color.fromARGB(255, 92, 75, 81),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage("assets/images/background.png"),
              fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          //physics: ScrollPhysic,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
      
                  Image.asset("assets/images/logo.png", color: AppColors.primary1,),
                  const Text(
                    "Login to Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10,),
                 // const Spacer(),
                  SizedBox(
                    width: 500,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black
                      ),
                      decoration: InputDecoration(
                      
                        
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        
                          hintText: "email", prefixIcon: Icon(Icons.man_3)
                          ),
                      controller: emailController,
                      onChanged: (value) {
                        //email = emailController.text;
                      },
                  
                    ),
                  ),
                  // child: newTextField(
                  //   hintText: "Email ID",
                  //   icon: Icon(Icons.man_3),
                  //   textController: emailController,
                  // )),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 500,
                      child: TextField(
                        obscuringCharacter: '*',
                          decoration: InputDecoration(
                            
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                              hintText: "password", prefixIcon: Icon(Icons.key)),
                          controller: passwordController,
                          onChanged: (value) {
                            //password = passwordController.text;
                          })
      
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
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                            .then((value) {
                          Navigator.of(context).pushReplacementNamed('/home');
                        });
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(AppColors.primary)),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home/signup');
                      },
                      child: Text("Don't have an account? Create one!"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
