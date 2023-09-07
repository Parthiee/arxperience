import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class FCCLattice extends StatefulWidget {
  const FCCLattice({super.key});

  @override
  State<FCCLattice> createState() => _FCCLatticeState();
}

class _FCCLatticeState extends State<FCCLattice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: AppColors.primary1,
       appBar: AppBar(
            elevation: 0,
            title: Text("Face-Centered Cubic"),
              backgroundColor: AppColors.primary1,
            ),
      body: SingleChildScrollView(
        child: SizedBox(
            //height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:  Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text("What Does Face-Centered Cubic (FCC) Mean?",
              style: TextStyle(fontSize: 25,
              color: Colors.white),),
              const SizedBox(height: 20,),
               Image.asset("assets/images/fcc.png"),
               SizedBox(height: 30,),
               const Text("Face-centered cubic (also known as FCC, cF, cubic close-packed or CCP) is the name given to a type of atom arrangement found in nature. A face-centered cubic unit cell structure consists of atoms arranged in a cube where each corner of the cube has a fraction of an atom with six additional full atoms positioned at the center of each cube face. The atoms at the corner of the cube are shared with eight other unit cells. As such, each corner atom represents one-eighth of an atom. The atoms at each face of the unit cell are shared with adjacent unit cells; therefore, each face atom represents half of an atom. Using this concept, the total number of atoms in the FCC unit cell structure is four: six halves at each of the faces plus eight one-eighth atoms at the corners. This is illustrated in the equation below: \n\n\n (1/2 atoms x 6 faces) + (1/8 atoms x 8 corners) = 4 atoms \n\n\n The atoms in the FCC unit cell arrangement are packed closer than other cell arrangements (such as the body-centered cubic [BCC], which is the simple unit cell arrangement). Due to their packing arrangement, FCC metals are typically softer and more ductile than their BCC counterparts, which may be an important factor when selecting materials for a given application",
               style: TextStyle(color: AppColors.primary, fontSize: 17),),
               
                ],
              ),
            ),
          ),
      ));
    
  }
}