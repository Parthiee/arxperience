import 'package:arxperience/experiments/bohr.dart';
import 'package:arxperience/experiments/fcc.dart';
import 'package:arxperience/pages/experiments.dart';
import 'package:arxperience/pages/first_page.dart';
import 'package:arxperience/pages/login.dart';
import 'package:arxperience/pages/unity.dart';
import 'package:arxperience/pages/page0.dart';
import 'package:arxperience/pages/profile.dart';
import 'package:arxperience/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'experiments/bcc.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "WorkSans",
        //scaffoldBackgroundColor: AppColors.primary,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Page0(),
        '/login': (context) => LoginPage(),
        '/home': (context) => homepage(),
        //'/home/aug': UnityTestingWrapper(),
        //'/home/aug': (context) => SecondPage(),
        '/home/signup': (context) => SignUp(),
        '/home/profile': (context) => Profile(),
        '/home/experiments' : (context) => Experiments(),
        '/home/experiments/fcc' : (context) => FCCLattice(),
        '/home/experiments/bcc' : (context) => BCCLattice(),
        '/home/experiments/bohr' : (context) => Bohr(),
      },
    );
  }
}
