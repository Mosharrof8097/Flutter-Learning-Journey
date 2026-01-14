import 'package:flutter/material.dart';
import 'package:layoutbasic/day3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Booking',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, // 👈 শুধু এইটা বদলাও
        ),
      ),
      home: const nextpage(),
    );
  }
}

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 179, 226, 182),
//         title: const Text(
//           "My App",
//           style: TextStyle(
//             color: Color.fromARGB(255, 17, 17, 17), // 👈 only title text
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),

//         // 👈 AppBar backgroundA
//         //title
//         leading: IconButton(
//           onPressed: () {
//             //here buton functionality
//           },
//           icon: const Icon(Icons.menu),
//         ),
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
//           IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
//         ],
//         centerTitle: true,
//         titleTextStyle: const TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.w600,
//         ),
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.menu),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.abc_sharp),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.menu),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.arrow_back_ios),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.hls_off_outlined),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.one_x_mobiledata),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.menu),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.circle, color: Colors.red, size: 30),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.circle, color: Colors.blue, size: 30),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.circle,
//                     color: const Color.fromARGB(255, 124, 24, 17),
//                     size: 30,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(Icons.hls_off_outlined),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Icon(
//                     Icons.circle,
//                     color: const Color.fromARGB(255, 225, 187, 185),
//                     size: 30,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             height: 200,
//             width: 400,
//             decoration: BoxDecoration(color: Colors.amber),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,

//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text("data1"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 30),
//               child: Row(
//                 children: [
//                   Card(
//                     shape: RoundedSuperellipseBorder(
//                       borderRadius: BorderRadius.all(Radius.elliptical(10, 12)),
//                     ),
//                     color: Colors.green.shade100,
//                     child: const Padding(
//                       padding: EdgeInsets.all(16),
//                       child: Text("Colored Card"),
//                     ),
//                   ),
//                   Card(
//                     shape: const StadiumBorder(),
//                     color: Colors.green.shade100,
//                     child: const Padding(
//                       padding: EdgeInsets.all(16),
//                       child: Text("Colored Card"),
//                     ),
//                   ),
//                   Card(
//                     shape: BeveledRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                       side: BorderSide(color: Colors.green, width: 2),
//                     ),
//                     color: Colors.green.shade100,
//                     child: const Padding(
//                       padding: EdgeInsets.all(16),
//                       child: Text("Colored Card"),
//                     ),
//                   ),
//                   Card(
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
//                     side: BorderSide(color: Colors.deepOrange,width: 2)),
//                     color: Colors.green.shade100,
//                     child: const Padding(
//                       padding: EdgeInsets.all(16),
//                       child: Text("Colored Card"),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }