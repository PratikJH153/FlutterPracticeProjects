import 'package:flutter/material.dart';
import './views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF704af1),
        accentColor: Color(0xFFf4f6fe),
        canvasColor: Color(0xFFfffefe),
        buttonColor: Color(0xFF565869),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Color(0xFF565869),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
