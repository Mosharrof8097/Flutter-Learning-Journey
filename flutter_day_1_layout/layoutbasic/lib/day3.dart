import 'package:flutter/material.dart';
class nextpage extends StatelessWidget {
  const nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(flex: 2, child: Container(color: Colors.amber,)),
        Expanded(flex: 1,child: Container(color: const Color.fromARGB(255, 221, 168, 12),)),
        Expanded(flex:3,child: Container(color: Colors.amber,)),
        Expanded(flex:1,child: Container(color: Colors.amber,)),
      ],),

    );
  }
}