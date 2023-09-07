import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Experiments extends StatefulWidget {
  const Experiments({super.key});

  @override
  State<Experiments> createState() => _ExperimentsState();
}

class _ExperimentsState extends State<Experiments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary1,
        appBar: AppBar(
            elevation: 0,
              backgroundColor: AppColors.primary1,
            ),
    
    
          body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home/experiments/fcc');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(AppColors.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  ),
                  child: Text("Face Centered Cubic (FCC) Lattice"),
                ),
               
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home/experiments/bcc');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(AppColors.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  ),
                  child: Text("Base Centered Cubic (FCC) Lattice"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                     Navigator.of(context).pushNamed('/home/experiments/bohr');
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(AppColors.primary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                  ),
                  child: Text("Bohr's Model of Atom"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    child: Text("Human Nervous System")),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(AppColors.primary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100))),
                    ),
                    child: Text("Pendulum")),
                Spacer()
              ],
            ),
          ),
        ));
  }
}
