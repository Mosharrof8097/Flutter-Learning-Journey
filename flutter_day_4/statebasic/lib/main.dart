import 'package:flutter/material.dart';
import 'package:statebasic/counter.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor:Colors.amberAccent),
      ),
      home:PractiseUI() ,

    );
  }
}
 class PractiseUI extends StatelessWidget {
   const PractiseUI({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        title: Text("Practise UI "),
        backgroundColor: Colors.lightGreenAccent,
        foregroundColor: Colors.black,centerTitle: true,
       
      ),
       body:Counter_logic(),
     );
   }
 }