import 'package:flutter/material.dart';
class silverappBarLogic extends StatefulWidget {
  const silverappBarLogic({super.key});

  @override
  State<silverappBarLogic> createState() => _silverappBarLogicState();
}

class _silverappBarLogicState extends State<silverappBarLogic> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          SliverAppBar(
            //trigaring app bar 
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            // title: Text("S I L V E R A P P B A R"),
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(color: Colors.green[100]),
              title: Text(
                "S I L V E R A P P B A R",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              
              color: Color.fromARGB(255, 103, 23, 12),
              height: 300,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),

              color: Color.fromARGB(255, 103, 23, 12),
              height: 300,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              color: Color.fromARGB(255, 103, 23, 12),
              height: 300,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              color: Color.fromARGB(255, 103, 23, 12),
              height: 300,
            ),
          ),
        ],
      );
  }
}