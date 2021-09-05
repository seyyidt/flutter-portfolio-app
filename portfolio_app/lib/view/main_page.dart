import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:portfolio_app/view/cv.dart';
import 'package:portfolio_app/view/skills.dart';
import 'package:portfolio_app/view/user_top_widget.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: new FooterView(
          footer: new Footer(
            child: new RichText(
              text: new TextSpan(
                children: [
                  new TextSpan(
                    text: '',
                    style: new TextStyle(color: Colors.white),
                  ),
                  new TextSpan(
                    text: 'Github',
                    style: new TextStyle(color: Colors.blue),
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        launch(
                            'https://github.com/seyyidt/flutter-portfolio-app');
                      },
                  ),
                ],
              ),
            ),
            padding: EdgeInsets.all(20),
            backgroundColor: Colors.black,
          ),
          children: <Widget>[
            Padding(
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
                      padding: const EdgeInsets.only(top: 15, bottom: 0),
                      child: SkillsWidget(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 5),
                      child: CVWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ]),
    );
  }
}
