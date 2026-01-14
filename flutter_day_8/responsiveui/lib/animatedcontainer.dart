import 'package:flutter/material.dart';

class AnimatedcontainerUi extends StatefulWidget {
  const AnimatedcontainerUi({super.key});

  @override
  State<AnimatedcontainerUi> createState() => _AnimatedcontainerUiState();
}

class _AnimatedcontainerUiState extends State<AnimatedcontainerUi> {
  // double boxheight = 200;
  // double boxwide = 300;
  // void _expandBox() {
  //   setState(() {
  //     boxheight = 300;
  //     boxheight = 300;
  //   });
  // }
  bool isexpand=false;
 
  void _expandBox(){
    setState(() {
      isexpand=!isexpand;
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox ,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 174, 156, 222),
        body: Center(child:
         AnimatedContainer(
          // height: boxheight,
          // width: boxwide,
          height: isexpand? 100:300,
          width: isexpand?100:300,

           color: isexpand ? Colors.orange : Colors.deepPurple,
        
          duration: Duration(seconds: 1))),
      ),
    );
  }
}
