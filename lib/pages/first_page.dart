
import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //body: //Text("Welcome, User!"),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.primary2,
                ),
                child: Text(
                  'Welcome, User!',
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(
              builder: (context) => IconButton(
                  icon: Icon(
                    Icons.menu_rounded,
                    color: AppColors.primary1,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer())),
          backgroundColor: AppColors.secondary,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: AppColors.primary1,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.laptop_mac,
                  color: AppColors.primary1,
                ),
                label: "Home")
          ],
          backgroundColor: AppColors.secondary,
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/home/aug');
                },
                child: Text("Open Camera"))));
  }
}
