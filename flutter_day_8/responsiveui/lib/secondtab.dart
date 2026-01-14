import 'package:flutter/material.dart';

class SecondtabUi extends StatelessWidget {
  const SecondtabUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(.3, .5),
      color:Color.fromARGB(255, 118, 104, 62),
      child: Center(child: Text("second  tab")),
    );
  }
}