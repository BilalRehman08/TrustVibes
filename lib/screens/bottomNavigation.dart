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
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              currentScreen = Screen3();
              currentTab = 10;
            });
          },
          child: Icon(
            Icons.add,
            size: 32,
            color: Colors.white,
          ),
          backgroundColor: Colors.purple,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // notchMargin: 5,
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
                      child: Icon(Icons.home,
                          size: 32,
                          color:
                              currentTab == 0 ? Colors.purple : Colors.black),
                    ),
                    MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Screen2();
                          currentTab = 1;
                        });
                      },
                      child: Icon(Icons.circle_outlined,
                          size: 32,
                          color:
                              currentTab == 1 ? Colors.purple : Colors.black),
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
                      child: Icon(Icons.design_services,
                          size: 32,
                          color:
                              currentTab == 2 ? Colors.purple : Colors.black),
                    ),
                    MaterialButton(
                      minWidth: 60,
                      onPressed: () {
                        setState(() {
                          currentScreen = Screen5();
                          currentTab = 3;
                        });
                      },
                      child: Icon(Icons.person,
                          size: 32,
                          color:
                              currentTab == 3 ? Colors.purple : Colors.black),
                    ),
                  ])),
        ),
      ),
    );
  }
}
