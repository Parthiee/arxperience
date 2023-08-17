import 'package:arxperience/pages/first_page.dart';
import 'package:arxperience/pages/login.dart';
import 'package:arxperience/pages/ar_old.dart';
import 'package:arxperience/pages/model_view_page.dart';
import 'package:arxperience/pages/signup.dart';
import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';


void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "WorkSans",
        scaffoldBackgroundColor: AppColors.primary,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => homepage(),
        '/home/aug': (context) => SecondPage(),
        '/home/signup': (context) => SignUp()
      },
    );
  }
}
