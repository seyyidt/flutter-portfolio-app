import 'package:flutter/material.dart';
import 'package:portfolio_app/view/main_page.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: MainPage(),
      ),
    );
  }
}
