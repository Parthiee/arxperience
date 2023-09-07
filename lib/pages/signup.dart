// ignore_for_file: prefer_const_constru
import 'package:arxperience/styles/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.left,
        ),
        backgroundColor: AppColors.primary1,
        elevation: 0,
      ),
      backgroundColor: AppColors.primary1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(color: Colors.grey),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textfield_color),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "First Name",
                  prefixIcon: Icon(Icons.person)),
              controller: fnameController,
              onChanged: (value) {},
            ),
            const SizedBox(height: 30),
            TextField(
              style: TextStyle(color: Colors.grey),
              decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.textfield_color),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Last Name",
                  prefixIcon: Icon(Icons.man_3)),
              controller: lnameController,
              onChanged: (value) {
                //email = emailController.text;
              },
            ),
            const SizedBox(height: 30),
            TextField(
              style: TextStyle(color: Colors.grey),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textfield_color),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              controller: emailController,
              onChanged: (value) {},
            ),
            SizedBox(height: 30),
            TextField(
              style: TextStyle(color: Colors.grey),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textfield_color),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Contact Number",
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              controller: phoneController,
              onChanged: (value) {},
            ),
            SizedBox(height: 30),
            TextField(
              style: TextStyle(color: Colors.grey),
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.textfield_color),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Password",
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              controller: passwordController,
              onChanged: (value) {},
            ),
            SizedBox(height: 80),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // String keyEmail = emailController.text.toLowerCase();
                    // keyEmail = keyEmail.replaceAll('.', ',');

                    Map<String, dynamic> userdata = {
                      "Username":
                          fnameController.text + " " + lnameController.text,
                      "First Name": fnameController.text,
                      "Last Name": lnameController.text,
                      "Contact Number": phoneController.text,
                      "Email": emailController.text
                    };

                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) async {
                        var path = FirebaseAuth.instance.currentUser!.uid;
    
                      await ref
                          .child("users/$path")
                          .set(userdata);
                      Navigator.of(context).pushReplacementNamed('/login');
                    });
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(AppColors.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  )),
            ),
            //ElevatedButton(onPressed: () async {}, child: Text("press me"))
          ]),
        ),
      ),
    );
  }
}
