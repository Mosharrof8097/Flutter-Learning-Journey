import 'package:flutter/material.dart';

class FourthpageUi extends StatelessWidget {
  const FourthpageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(.3, .5),
      color:Color.fromARGB(255, 48, 190, 48),
      child: Center(child: Text("fourth tab")),
    );
  }
}