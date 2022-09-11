import 'package:flutter/material.dart';
import './views/quiz_page.dart';
import './views/result_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      theme: ThemeData(
        primaryColor: Color(0xFF0f7dec),
        accentColor: Colors.pink,
        canvasColor: Color(0xFFf2f4f9),
        scaffoldBackgroundColor: Color(0xFF252c49).withOpacity(0.5),
        primaryColorLight: Colors.grey[400],
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => QuizPage(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}
