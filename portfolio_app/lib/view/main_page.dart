import 'package:flutter/material.dart';
import 'package:portfolio_app/view/cv.dart';
import 'package:portfolio_app/view/skills.dart';
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
                'I am a passionate App Developer located in Vienna.',
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: SkillsWidget(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: CVWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
