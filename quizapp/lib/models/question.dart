import 'package:flutter/foundation.dart';

class Question {
  String question;
  Map<String, bool> answers;

  Question({
    @required this.question,
    @required this.answers,
  });
}
