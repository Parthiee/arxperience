

import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.secondary,),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: AppColors.primary1,), label: "Home"), 
        BottomNavigationBarItem(icon: Icon(Icons.laptop_mac,color: AppColors.primary1,), label: "Home")

      ],
      backgroundColor: AppColors.secondary,),
      
    );
  }
}
