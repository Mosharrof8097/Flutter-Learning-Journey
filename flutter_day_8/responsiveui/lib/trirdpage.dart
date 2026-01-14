import 'package:flutter/material.dart';

class ThirdpageUi extends StatelessWidget {
  const ThirdpageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(.3, .5),
      color:Color.fromARGB(255, 211, 208, 198),
      child: Center(child: Text("third tab")),
    );
  }
}