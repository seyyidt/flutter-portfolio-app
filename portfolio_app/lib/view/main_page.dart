import 'package:flutter/material.dart';
import 'package:portfolio_app/view/user_top_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: UserTopWidget(),
              ),
              Text(
                'about me lorem ipsum doler sit amet lorem ipsum doler sit amet lorem ipsum doler sit amet lorem ipsum doler sit amet',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
