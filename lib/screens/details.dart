import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:trustvibes/screens/bottomnav2.dart';

import 'feed.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<String> images = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
    "assets/5.png",
    "assets/6.png",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(child: Image.asset("assets/notification.png")),
                  Text('Diniharistd',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      )),
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.060,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 1,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.004,
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                      Container(child: Image.asset("assets/dp.png")),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.09,
                          ),
                          Text(
                            "21",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.004,
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              "Diniharistd",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.013,
            ),
            Text(
              "@portugal",
              style: TextStyle(
                color: Color(0xff965bf5),
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.008,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60),
              child: Text(
                "Diniharistd is a upcoming sci-fi and fantasy author, artist, photojournalist and musician.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Follow",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNav2()));
                          },
                          child: Text(
                            "Feed",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => MyApp()));
                          },
                          child: Text(
                            "Info",
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Image.asset("assets/icon.png"),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10),
              child: StaggeredGridView.countBuilder(
                shrinkWrap: true,
                crossAxisCount: 3,
                itemCount: images.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => Card(
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(images[index]),
                  ),
                ),
                staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 2.0,
              ),
            ),
          ]),
        ]),
      )),
    );
  }
}

// Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.30,
//                 width: MediaQuery.of(context).size.width * 1,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => BottomNav2()));
//                       },
//                       child: Container(
//                         height: MediaQuery.of(context).size.height * 0.30,
//                         width: MediaQuery.of(context).size.width * 0.45,
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage("assets/back.jpg"),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.width * 0.45,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage("assets/back.jpg"),
//                               fit: BoxFit.cover,s
//                             ),
//                           ),
//                         ),
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.145,
//                           width: MediaQuery.of(context).size.width * 0.45,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage("assets/back.jpg"),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
