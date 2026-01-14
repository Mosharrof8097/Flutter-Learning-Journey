import 'package:flutter/material.dart';

class BottomNavigationLogic extends StatefulWidget {
  const BottomNavigationLogic({super.key});

  @override
  State<BottomNavigationLogic> createState() =>
      _BottomNavigationLogicState();
}

class _BottomNavigationLogicState
    extends State<BottomNavigationLogic> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child:  Text(currentIndex.toString(), style: const TextStyle(fontSize: 24),),

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex ,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,

      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.lightGreenAccent,
      onTap: (index) {
        setState(() {
          currentIndex=index;
        });

      } ,

      
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.people),label: "Friend"),
          BottomNavigationBarItem(icon: Icon(Icons.feed),label: "Feed"),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: "Masenger"),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
        ] ),
    );}}