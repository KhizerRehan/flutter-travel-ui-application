import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/Constants.dart';
import 'package:flutter_travel_ui_starter/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Constants constant = new Constants();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(constant.primaryColor),
        accentColor: Color(constant.accentColor),
        scaffoldBackgroundColor: Color(constant.scaffoldBackgroundColor),
      ),
      home: HomeScreen(),
    );
  }
}