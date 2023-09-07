import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Bohr extends StatefulWidget {
  const Bohr({super.key});

  @override
  State<Bohr> createState() => _BohrState();
}

class _BohrState extends State<Bohr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary1,
        appBar: AppBar(
          elevation: 0,
          title: Text("Borh's Model of Atom"),
          backgroundColor: AppColors.primary1,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
           // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "What is Bohr's Model of an Atom?",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset("assets/images/bohr.jpg"),
                  SizedBox(
                    height: 30
                  ),
                  const Text(
                    "The Bohr model of the atom was proposed by Neil Bohr in 1915. It came into existence with the modification of Rutherford's model of an atom. Rutherford's model introduced the nuclear model of an atom, in which he explained that a nucleus (positively charged) is surrounded by negatively charged electrons. Bohr's model consists of a small nucleus (positively charged) surrounded by negative electrons moving around the nucleus in orbits. Bohr found that an electron located away from the nucleus has more energy, and the electron which is closer to nucleus has less energy",
                    style: TextStyle(color: AppColors.primary, fontSize: 17),
                  ),
                  SizedBox(height: 20),
                  const Text(
                    "Introduction to the Bohr Model",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Bohr theory modified the atomic structure model by explaining that electrons move in fixed orbitals (shells) and not anywhere in between and he also explained that each orbit (shell) has a fixed energy. Rutherford explained the nucleus of an atom and Bohr modified that model into electrons and their energy levels.",
                    style: TextStyle(color: AppColors.primary,  fontSize: 17),
                  ),

                  SizedBox(height: 20),
                  const Text(
                    "Postulates",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                    
                    
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "1. In an atom, electrons (negatively charged) revolve around the positively charged nucleus in a definite circular path called orbits or shells.\n\n2. Each orbit or shell has a fixed energy and these circular orbits are known as orbital shells.\n\n3. The energy levels are represented by an integer (n=1, 2, 3…) known as the quantum number. This range of quantum number starts from nucleus side with n=1 having the lowest energy level. The orbits n=1, 2, 3, 4… are assigned as K, L, M, N…. shells and when an electron attains the lowest energy level, it is said to be in the ground state.\n\n 4. The electrons in an atom move from a lower energy level to a higher energy level by gaining the required energy and an electron moves from a higher energy level to lower energy level by losing energy.",
                    style: TextStyle(color: AppColors.primary,  fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
