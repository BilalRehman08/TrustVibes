import 'package:flutter/material.dart';

import 'package:trustvibes/screens/Screen2.dart';
import 'package:trustvibes/screens/screen3.dart';
import 'package:trustvibes/screens/screen4.dart';
import 'package:trustvibes/screens/screen5.dart';

import 'feed2.dart';

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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 5, bottom: 0.0, right: 5),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentScreen = Screen3();
              currentTab = 10;
            });
          },
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          backgroundColor: Colors.purple,
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
                        children: [
                          SizedBox(height: 10),
                          Icon(Icons.feed_rounded,
                              size: 25,
                              color: currentTab == 0
                                  ? Colors.purple
                                  : Colors.grey[800]),
                          Text(
                            'Feed',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
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
                        children: [
                          SizedBox(height: 10),
                          Icon(Icons.circle_outlined,
                              size: 25,
                              color: currentTab == 1
                                  ? Colors.purple
                                  : Colors.grey[800]),
                          Text(
                            'Collection',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Screen4();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Icon(Icons.design_services,
                              size: 25,
                              color: currentTab == 2
                                  ? Colors.purple
                                  : Colors.grey[800]),
                          Text(
                            'Fan Club',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
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
                        children: [
                          SizedBox(height: 10),
                          Icon(Icons.favorite,
                              size: 25,
                              color: currentTab == 3
                                  ? Colors.purple
                                  : Colors.grey[800]),
                          Text(
                            'Likes',
                            style: TextStyle(fontSize: 12),
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
