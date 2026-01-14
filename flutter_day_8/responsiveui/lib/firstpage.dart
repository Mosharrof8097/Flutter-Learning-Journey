import 'package:flutter/material.dart';

class FirstpageUI extends StatelessWidget {
  const FirstpageUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(.3, .5),
      color:Colors.amber,
      child: Center(child: Text("First tab")),
    );
  }
}