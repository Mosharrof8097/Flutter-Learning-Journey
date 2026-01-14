import 'package:flutter/material.dart';
import 'package:responsiveui/fifthpage.dart';
import 'package:responsiveui/firstpage.dart';
import 'package:responsiveui/fourthpage.dart';
import 'package:responsiveui/secondtab.dart';
import 'package:responsiveui/trirdpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(title: Text("T A P B A R ")),
        body: Column(
          children: [
            TabBar(
               labelColor: Colors.blue,
               unselectedLabelColor: Colors.grey,
            
            
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.mediation)),
                Tab(icon: Icon(Icons.people)),
                Tab(icon: Icon(Icons.notifications),),
                Tab(icon: Icon(Icons.image),)
              ],
            ),
            Expanded(
              child: TabBarView(children:[
              FirstpageUI(),
              SecondtabUi(),
              ThirdpageUi(),
              FourthpageUi(),
              FifthpageUi()

               
              ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
