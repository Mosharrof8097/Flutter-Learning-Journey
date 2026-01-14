import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: .start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color.fromARGB(255, 246, 247, 249),
                    child: Icon(Icons.person, size: 35),
                  ),
                  const SizedBox(width: 12),

                  // 🔥 THIS IS THE FIX
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Mosharrof",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "mdmosharrofhossain455@gmail.com",
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
      ),
    );
  }}