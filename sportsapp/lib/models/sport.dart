import 'package:flutter/foundation.dart';

class Sport {
  final String title;
  final int players;
  final int coaches;
  final String category;
  final String position;
  final String location;

  const Sport({
    @required this.title,
    @required this.players,
    @required this.coaches,
    @required this.category,
    @required this.position,
    @required this.location,
  });
}
