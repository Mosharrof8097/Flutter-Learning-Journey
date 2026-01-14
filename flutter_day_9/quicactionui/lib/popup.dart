import 'package:flutter/material.dart';
class PopupUI extends StatefulWidget {
  const PopupUI({super.key});

  @override
  State<PopupUI> createState() => _PopupUIState();
}

class _PopupUIState extends State<PopupUI> {
  void _Popupbox(){
    showModalBottomSheet(context: context, builder:(context){
    return Container(
      height: 200,
      child: Column(children: [
         Text("Modal Bottom Sheet"),
          SizedBox(height: 12),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Delete"),
            onTap: () {
                  Navigator.pop(context); // close bottom sheet first
                     // then show dialog
                },
          ),
      ],),
    );

    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
               body: Center(
          child: Container(
            
            color: Colors.green[200],
            child: Center(child: ElevatedButton(onPressed: (){
               _Popupbox();
            }, child: Text("popup button"))),
            
          ),
        ) ,

    );
  }
}