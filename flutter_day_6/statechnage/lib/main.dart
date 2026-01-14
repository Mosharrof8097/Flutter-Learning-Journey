import 'package:flutter/material.dart';
import 'package:statechnage/botomnevigation.dart';
import 'package:statechnage/drawerlogic.dart';
import 'package:statechnage/silvarappbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor:Colors.blueAccent)),
      home:SilvarappbarLogic() ,
    );
    }}