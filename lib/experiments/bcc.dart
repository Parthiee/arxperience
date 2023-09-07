import 'package:arxperience/styles/app_colors.dart';
import 'package:flutter/material.dart';

class BCCLattice extends StatefulWidget {
  const BCCLattice({super.key});

  @override
  State<BCCLattice> createState() => _BCCLatticeState();
}

class _BCCLatticeState extends State<BCCLattice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary1,
       appBar: AppBar(
            elevation: 0,
            title: Text("Base-Centered Cubic"),
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
                   const Text("Base-Centered Cubic (FCC)",
              style: TextStyle(fontSize: 25,
              color: Colors.white),),
              const SizedBox(height: 20,),
               Image.asset("assets/images/bcc.png"),
               SizedBox(height: 30,),
               const Text("Body-centered cubic (BCC) is a crystal structure that consists of a cube-shaped unit cell with atoms located at the corners and in the center of the cube. In this structure, each atom is surrounded by eight nearest neighbors located at the corners of the cube.\n\n The body-centred cubic structure has many real-world industry applications in materials science, metallurgy and manufacturing. BCC materials are commonly used for their excellent mechanical properties, such as high strength, toughness and ductility. BCC metals are widely used in structural applications, such as construction, automotive and aerospace industries.\n\n In the construction industry, BCC materials are used for the production of high-strength steel, which is used in the construction of bridges, buildings and other infrastructure projects. BCC steel has excellent toughness, ductility, and fatigue resistance, which makes it ideal for these applications. Steel is also used in the production of tools, such as hammers and wrenches, due to its excellent mechanical properties.\n\n In the automotive industry, BCC materials are used for the production of engine components, such as connecting rods and crankshafts. BCC steel and titanium alloys are used for these applications due to their high strength and fatigue resistance. BCC titanium alloys are also used for the production of components that require excellent corrosion resistance, such as exhaust systems and heat exchangers.",
               style: TextStyle(color: AppColors.primary, fontSize: 17),)
               
                ],
              ),
            ),
          ),
      ));
    
  }
}