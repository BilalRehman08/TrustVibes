import 'package:flutter/material.dart';
import 'package:trustvibes/screens/details.dart';
import 'package:trustvibes/screens/Screen2.dart';
import 'package:trustvibes/screens/screen3.dart';
import 'package:trustvibes/screens/screen4.dart';
import 'package:trustvibes/screens/screen5.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentTab = 0;
  final List<Widget> screen = [
    Details(),
    Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
  ];

  Widget currentScreen = Details();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 5, bottom: 0.0, right: 5),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentScreen = Screen3();
              currentTab = 10;
            });
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Color(0xff6A5FE9), Color(0xff9856EB)]),
            ),
            child: Icon(
              Icons.add,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 50,
        color: Colors.grey[300],
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Container(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                        minWidth: 50,
                        onPressed: () {
                          setState(() {
                            currentScreen = Details();
                            currentTab = 0;
                          });
                        },
                        child: Image.asset('assets/feed.png',
                            color: currentTab == 0
                                ? Colors.purple
                                : Colors.black)),
                    MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            currentScreen = Screen2();
                            currentTab = 1;
                          });
                        },
                        child: Image.asset('assets/Vectorcollection.png',
                            color: currentTab == 1
                                ? Colors.purple
                                : Colors.black)),
                    SizedBox(width: 20),
                    MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            currentScreen = Screen4();
                            currentTab = 2;
                          });
                        },
                        child: Image.asset('assets/VectorFanclub.png',
                            color: currentTab == 2
                                ? Colors.purple
                                : Colors.black)),
                    MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            currentScreen = Screen5();
                            currentTab = 3;
                          });
                        },
                        child: Image.asset('assets/userprofile.png',
                            color: currentTab == 3
                                ? Colors.purple
                                : Colors.black)),
                  ])),
        ),
      ),
    );
  }
}
