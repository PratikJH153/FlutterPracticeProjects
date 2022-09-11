import 'package:flutter/material.dart';
import './views/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.grey,
        canvasColor: Color(0xFFfbf9f8),
        scaffoldBackgroundColor: Color(0xFFfbf9f8),
        brightness: Brightness.light,
      ),
      title: "Sports App",
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
