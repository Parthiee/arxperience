import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 75, 81),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/logo.png"),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: "Username",
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
              filled: true,
              fillColor: Colors.white.withOpacity(0.15)
            ),
          
          ),
          SizedBox(height: 20),
          TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey),
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.15)
                  )
            ),
                  
          TextButton(
              onPressed: () {
                print('Hello Bro!');
              },
              child: Text("Forget Password")),
          ElevatedButton(onPressed: () {}, child: Text("Log in"))
        ],
      ),
    );
  }
}
