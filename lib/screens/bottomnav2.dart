import 'package:flutter/material.dart';

import 'package:trustvibes/screens/Screen2.dart';
import 'package:trustvibes/screens/screen3.dart';
import 'package:trustvibes/screens/screen4.dart';
import 'package:trustvibes/screens/screen5.dart';

import 'feed.dart';

class BottomNav2 extends StatefulWidget {
  @override
  _BottomNav2State createState() => _BottomNav2State();
}

class _BottomNav2State extends State<BottomNav2> {
  int currentTab = 0;
  final List<Widget> screen = [
    Feed2(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];

  Widget currentScreen = Feed2();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            currentScreen = Screen3();
            currentTab = 10;
          });
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient:
                LinearGradient(colors: [Color(0xff6A5FE9), Color(0xff9856EB)]),
          ),
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 5,
        color: Colors.grey[300],

        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 50,
                      onPressed: () {
                        setState(() {
                          currentScreen = Feed2();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/feed.png',
                              color: currentTab == 0
                                  ? Color(0xff965bf5)
                                  : Colors.black),
                          Text(
                            'Feed',
                            style: TextStyle(
                                fontSize: 12,
                                color: currentTab == 0
                                    ? Color(0xff965bf5)
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 0.5,
                      indent: 15,
                      endIndent: 15,
                      color: Colors.grey,
                    ),
                    MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Screen2();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/Vectorcollection.png',
                              color: currentTab == 1
                                  ? Color(0xff965bf5)
                                  : Colors.black),
                          Text(
                            'Collection',
                            style: TextStyle(
                                fontSize: 12,
                                color: currentTab == 1
                                    ? Color(0xff965bf5)
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 0.5,
                      indent: 30,
                      endIndent: 15,
                      color: Colors.grey,
                    ),
                    MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Screen4();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/VectorFanclub.png',
                              color: currentTab == 2
                                  ? Color(0xff965bf5)
                                  : Colors.black),
                          Text(
                            'Fan Club',
                            style: TextStyle(
                                fontSize: 12,
                                color: currentTab == 2
                                    ? Color(0xff965bf5)
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                    VerticalDivider(
                      thickness: 0.5,
                      indent: 15,
                      endIndent: 15,
                      color: Colors.grey,
                    ),
                    MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Screen5();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/Vectorfavourite.png',
                              color: currentTab == 3
                                  ? Color(0xff965bf5)
                                  : Colors.black),
                          Text(
                            'Likes',
                            style: TextStyle(
                                fontSize: 12,
                                color: currentTab == 3
                                    ? Color(0xff965bf5)
                                    : Colors.black),
                          )
                        ],
                      ),
                    ),
                  ])),
        ),
      ),
    );
  }
}
