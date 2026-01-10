import 'package:flutter/material.dart';
class DrawerPagelogic extends StatelessWidget {
  const DrawerPagelogic({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple[200]),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.greenAccent[100],
                    backgroundImage: AssetImage("assets/images/download.jpg"),
                  ),

                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Md.Mosharrof Hossain",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          "mdmosharrrofHossain455@gmail.com",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HomePage"),
              textColor: Colors.black,
              iconColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.color_lens, color: Colors.blue),
              title: Text("theme"),
              textColor: Colors.black,
              iconColor: Colors.black,
              onTap: () {
                ;
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notification"),
              textColor: Colors.black,
              iconColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            const Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              textColor: Colors.black,
              iconColor: Colors.black,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
  }
}