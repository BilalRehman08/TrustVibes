import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/back.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.notification_add,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
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
              SizedBox(height: 30),
              Text("Continue....."),
            ]),
          ),
        ]),
      )),
    );
  }
}
