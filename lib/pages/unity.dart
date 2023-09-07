import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

class UnityTestingWrapper extends StatefulWidget {
  const UnityTestingWrapper({super.key});

  UnityTestingState createState() => UnityTestingState();
}

class UnityTestingState extends State<UnityTestingWrapper> {
  late UnityWidgetController _unityWidgetController;
  //double _sliderValue = 0.0;

  get onUnityMessage => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //   title: const Text('Unity Flutter Demo'),
      //   backgroundColor: AppColors.secondary,
      // ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8),
    
        
        
          
          child: 
            SizedBox(
              height: 10000,
              width: 10000,
              child: 
                UnityWidget(
                  fullscreen: true,
                  useAndroidViewSurface: true,
                  //hideStatus: true,
                  onUnityCreated: (UnityWidgetController controller) {},
                ),
              
            ),

        ),
    );

  }

  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }

}
