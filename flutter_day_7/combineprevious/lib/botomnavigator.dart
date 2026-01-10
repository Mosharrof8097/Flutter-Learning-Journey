import 'package:flutter/material.dart';
class BotomnavigatorLogic extends StatefulWidget {
  const BotomnavigatorLogic({super.key});

  @override
  State<BotomnavigatorLogic> createState() => _BotomnavigatorLogicState();
}

class _BotomnavigatorLogicState extends State<BotomnavigatorLogic> {
    int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.greenAccent[200],

      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: "Friend",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.feed),
          label: "Feed",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: "Messenger",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: "Menu",
        ),
      ],
    );
  }
}
  