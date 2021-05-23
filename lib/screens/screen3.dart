import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Screen 3"),
      ),
    );
  }
}

// DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         body: Column(
//           children: <Widget>[
//             // construct the profile details widget here
//             Stack(children: <Widget>[
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.30,
//                 width: MediaQuery.of(context).size.width * 1,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/back.jpg"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Column(children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.only(left: 12, right: 12, top: 45),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       IconButton(
//                         icon: Icon(
//                           Icons.notification_add,
//                           size: 30,
//                           color: Colors.white,
//                         ),
//                         onPressed: () {
//                           // Navigator.push(context,
//                           //     MaterialPageRoute(builder: (context) => MyApp()));
//                         },
//                       ),
//                       Text('Diniharistd',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 25,
//                           )),
//                       Icon(
//                         Icons.menu,
//                         size: 30,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.065,
//                 ),
//                 Container(
//                   height: MediaQuery.of(context).size.height * 0.20,
//                   width: MediaQuery.of(context).size.width * 1,
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25.0, right: 25),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   SizedBox(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.105,
//                                   ),
//                                   Text(
//                                     "40",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   SizedBox(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.004,
//                                   ),
//                                   Text(
//                                     "Followers",
//                                     style: TextStyle(
//                                         color: Colors.black, fontSize: 16),
//                                   ),
//                                 ],
//                               ),
//                               Container(
//                                 child: CircleAvatar(
//                                   radius: 65.0,
//                                   backgroundColor: Colors.purple,
//                                 ),
//                               ),
//                               Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: [
//                                   SizedBox(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.105,
//                                   ),
//                                   Text(
//                                     "21",
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   SizedBox(
//                                     height: MediaQuery.of(context).size.height *
//                                         0.004,
//                                   ),
//                                   Text(
//                                     "Following",
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ]),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.03,
//                 ),
//                 Text(
//                   "Diniharistd",
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.013,
//                 ),
//                 Text(
//                   "@portugal",
//                   style: TextStyle(
//                     color: Colors.purple,
//                     fontSize: 16,
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.008,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 60.0, right: 60),
//                   child: Text(
//                     "Diniharistd is a upcoming sci-fi and fantasy author, artist, photojournalist and musician.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.02,
//                 ),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Follow",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {},
//                         child: Text(
//                           "Contact",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 22,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       )
//                     ])
//               ]),
//             ]),

//             // the tab bar with two items
//             SizedBox(
//               height: 50,
//               child: AppBar(
//                 bottom: TabBar(
//                   tabs: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 100.0),
//                       child: Tab(
//                         icon: Icon(Icons.directions_bike),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 100.0),
//                       child: Tab(
//                         icon: Icon(Icons.directions_bike),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // create widgets for each tab bar here
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // first tab bar view widget
//                   Feed(),

//                   // second tab bar viiew widget
//                   Screen5(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
