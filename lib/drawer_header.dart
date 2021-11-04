import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyanAccent[200],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //image: B

            ),

          ),
          Text("some other text")
        ],
      ),
    );
  }
}
