import 'package:combineprevious/botomnavigator.dart';
import 'package:combineprevious/drawer.dart';
import 'package:combineprevious/silverappbar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BotomnavigatorLogic(),
      drawer: DrawerPagelogic(),
      backgroundColor: Colors.deepPurple[100],
      body: silverappBarLogic()
    );
  }
}
