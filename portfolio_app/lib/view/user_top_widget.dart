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
        ],
      ),
    );
  }
}
