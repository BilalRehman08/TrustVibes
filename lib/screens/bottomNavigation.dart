import 'package:flutter/material.dart';
import 'package:trustvibes/screens/details.dart';
import 'package:trustvibes/screens/screen2.dart';
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

  Widget CurrentScreen = Details();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: bucket, child: CurrentScreen),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 5, bottom: 0.0, right: 5),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              CurrentScreen = Screen3();
              currentTab = 8;
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: MaterialButton(
                        minWidth: 50,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = Details();
                            currentTab = 0;
                          });
                        },
                        child: Icon(Icons.home,
                            size: 32,
                            color:
                                currentTab == 0 ? Colors.purple : Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = Screen2();
                            currentTab = 1;
                          });
                        },
                        child: Icon(Icons.favorite,
                            size: 32,
                            color:
                                currentTab == 1 ? Colors.purple : Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = Screen4();
                            currentTab = 2;
                          });
                        },
                        child: Icon(Icons.add_shopping_cart,
                            size: 32,
                            color:
                                currentTab == 2 ? Colors.purple : Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: MaterialButton(
                        minWidth: 60,
                        onPressed: () {
                          setState(() {
                            CurrentScreen = Screen5();
                            currentTab = 4;
                          });
                        },
                        child: Icon(Icons.person,
                            size: 32,
                            color:
                                currentTab == 3 ? Colors.purple : Colors.black),
                      ),
                    ),
                  ])),
        ),
      ),
    );
  }
}
