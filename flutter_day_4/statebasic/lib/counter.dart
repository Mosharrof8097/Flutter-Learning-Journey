import 'package:flutter/material.dart';
class Counter_logic extends StatefulWidget {
  const Counter_logic({super.key});

  @override
  State<Counter_logic> createState() => _Counter_logicState();

}

class _Counter_logicState extends State<Counter_logic> {
  int count =0;
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Every single press insee one $count"),
        SizedBox(height: 5,),
        ElevatedButton(onPressed: (){
          count++;
          setState(() {
            
          });

        }, child: Text("Increment "))
      ],

    ));
  }
}