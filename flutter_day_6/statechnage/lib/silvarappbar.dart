import 'package:flutter/material.dart';

class SilvarappbarLogic extends StatelessWidget {
  const SilvarappbarLogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            // title: Text("S I L V E R A P P B A R"),
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(background:Container(color: Colors.green,
            ),
             title: Text("S I L V E R A P P B A R",style: TextStyle(fontSize: 19),),),
          ),
          SliverToBoxAdapter(
            child: Container(
               margin: EdgeInsets.all(20),
              color:Color.fromARGB(255, 88, 73, 19),
              height: 300,
            ),
            
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),

              
              color:Colors.amberAccent,
              height: 300,
            ),
            
          ),
          SliverToBoxAdapter(
            
            child: Container(
              margin: EdgeInsets.all(20),
              color:Color.fromARGB(255, 53, 45, 16),
              height: 300,
            ),
            
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(20),
              color:Colors.amberAccent,
              height: 300,
            ),
            
          ),
        ],
      ),
    );
  }
}
