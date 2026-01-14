import 'dart:io';

import 'package:flutter/material.dart';
import 'user_class.dart';
import 'list_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 5, 75, 2)),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Column(children: [
          //         Expanded(flex:3,child: Container(color: Colors.amber,)),
          //         Expanded(flex:1,child: Container(color: Colors.black,)),
          //         Expanded(flex:3,child: Container(color: Colors.amber,)),
          //         Expanded(flex:1,child: Container(color: Colors.black,)),
          //         Expanded(flex:3,child: Container(color: Colors.amber,)),
          //         Expanded(flex:1,child: Container(color: Colors.black,)),
          //         Expanded(
          //           flex: 3,
          //           child: Container(
          //             child: Card(color: const Color.fromARGB(255, 125, 164, 127),
          //             elevation: 1,
          //               child: Text("Text1"),),
          //           ),
          //         ),
          //         Card(
          //   child: Padding(
          //     padding: const EdgeInsets.all(16),
          //     child: Row(
          //       children: [
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: const [
          //               Text("Dhaka → Chittagong"),
          //               Text("Economy class"),
          //             ],
          //           ),
          //         ),
          //         const Text("৳4500"),
          //       ],
          //     ),
          //   ),
          // ),
          //
          //      ],),
          // ListView.builder(
          //   itemCount: 10,
          //   itemBuilder: (context, index) {
          //     return Text("Item $index");
          //   },
          // )
          // ListView.builder(
          //   itemCount: 5,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       margin: const EdgeInsets.all(12),
          //       child: Padding(
          //         padding: const EdgeInsets.all(16),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text("Booking $index"),
          //                 const Text("Economy Class"),
          //               ],
          //             ),
          //             const Text("৳4500"),
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // )
          // ListView.builder(
          //   itemCount: Studentinformation.length,
          //   itemBuilder: (context, index) {
          //     final Studentinfo = Studentinformation[index];
          //     return Card(
          //       margin: const EdgeInsets.all(12),
          //       child: Padding(
          //         padding: const EdgeInsets.all(12),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Column(
          //               mainAxisAlignment: MainAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   Studentinfo.name,
          //                   style: TextStyle(
          //                     color: Colors.black,
          //                     fontSize: 12,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                  const SizedBox(height: 4),
          //                  Text(Studentinfo.CompanyName),
          //                  const SizedBox(height: 4),
          //                  Text(Studentinfo.HomeTown)
          //               ],
          //             ),
          //             Text("৳${Studentinfo.salary}",  style: const TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.bold,))
          //           ],
          //         ),
          //       ),
          //     );
          //   },
          // ),
          ListView.builder(
            itemCount: Studentinformation.length,
            itemBuilder: (BuildContext context, int index) {
              final Studentinfo = Studentinformation[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.only(topLeft: Radius.elliptical(3, 3)),
                ),

                margin: const EdgeInsets.all(12),
                child: SizedBox(
                  height: 150,
                  child: Stack(
                    children: [
                      Container(color: Colors.green.shade100),

                      Positioned(
                        top: 12,
                        left: 12,
                        child: Text(
                          "${Studentinfo.name}",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 12,
                        right: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(Studentinfo.CompanyName),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
    );
  }
}
