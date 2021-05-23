import 'package:flutter/material.dart';

Widget postdetail(context, bgimage, dpimage) {
  return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(bgimage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15, top: 15, bottom: 10),
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ethereum Face',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                            height: 25, width: 25, child: Image.asset(dpimage)),
                        SizedBox(width: 5),
                        Text(
                          '@portugral',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[800],
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text("Place a bid"))
              ],
            )),
          )),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current bid',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          '0.40 ETH',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "S353.17",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ending in',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Auction has ended',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    )
                  ],
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          )
        ],
      ));
}
