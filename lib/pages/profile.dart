
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

import '../styles/app_colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  static var path = FirebaseAuth.instance.currentUser!.uid;
  Query dbref = FirebaseDatabase.instance
      .ref()
      .child("users")
      .child(path);

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "Personal Details",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.left,
        ),
        backgroundColor: AppColors.primary1,
        elevation: 0,
      ),
      backgroundColor: AppColors.primary1,
      body: Padding(
          padding: EdgeInsets.all(25),
          child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
             
              child: FirebaseAnimatedList(
                  query: dbref,
                  itemBuilder: (BuildContext context, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    String data = snapshot.value as String;
                    String key = snapshot.key!;

                    key = key + ": ";

                    // return Text(key);
                    return listData(data: data, key: key);
                  }))),
    );
  }


  Widget listData({required String data, required String key}) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(5),
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: SizedBox(
            child: Column(children: [
          Row(children: [
            Text(key,
                style: TextStyle(fontSize: 15, color: AppColors.primary2)),
            Text(data,
                style: TextStyle(fontSize: 15, color: AppColors.primary)),
          ]),
          SizedBox(
            height: 10,
          )
        ])));
  }
}
