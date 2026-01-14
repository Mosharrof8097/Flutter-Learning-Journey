import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _dialogBox(){
    showDialog(context: context, builder:(context){
      return AlertDialog(
        backgroundColor: Colors.orange[200],
        title: Text("  delete"),
        content: Text("Are you realy wanna delete "),
        actions: [
          TextButton(onPressed: (){
          Navigator.pop(context);

          }, child: Text("yes")),
          TextButton(onPressed: (){
          Navigator.pop(context);

          }, child: Text("No"))
        ],

      );
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        body: Center(
          child: Container(
            
            color: Colors.green[200],
            child: Center(child: IconButton(onPressed: (){
              
            }, icon: Icon(Icons.delete))),
            
          ),
        ) ,
      
    );
  }
}