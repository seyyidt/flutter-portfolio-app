import 'dart:ui';

import 'package:flutter/material.dart';

class UserTopWidget extends StatefulWidget {
  const UserTopWidget({Key? key}) : super(key: key);

  @override
  _UserTopWidgetState createState() => _UserTopWidgetState();
}

class _UserTopWidgetState extends State<UserTopWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 100,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              border: new Border.all(
                color: Colors.white,
                width: 4.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Seyyid Tiryaki",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Fullstack Developer",
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.white70),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_city, color: Colors.white38, size: 12),
                Text(
                  "Vienna, AT",
                  style: TextStyle(color: Colors.white38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
