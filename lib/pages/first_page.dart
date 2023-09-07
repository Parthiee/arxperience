// ignore_for_file: camel_case_types

import 'package:arxperience/pages/profile.dart';
import 'package:arxperience/styles/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import 'unity.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  DatabaseReference dbref = FirebaseDatabase.instance.ref().child('users');
  late String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //body: //Text("Welcome, User!"),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
  
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: AppColors.primary1,
                ),
                child: Text(
                  'Welcome, ${FirebaseAuth.instance.currentUser!.email}',
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("/home/experiments");
                },
                leading: const Icon(Icons.message),
                title: const Text('Experiments'),
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.of(context).pushNamed("/home/profile");
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log out'),
                onTap: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.of(context).pushReplacementNamed('/');
                  });
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          leading: Builder(
              builder: (context) => IconButton(
                  icon: const Icon(
                    Icons.menu_rounded,
                    color: AppColors.primary,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer())),
          backgroundColor: AppColors.primary1,
        ),
        body: DecoratedBox(
          decoration: const BoxDecoration(color: AppColors.primary1),
          child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push((MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const UnityTestingWrapper())));
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.primary)),
                  child: const Text("Open Camera"))),
                
        ));
  }
}
