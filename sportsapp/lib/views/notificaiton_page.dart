import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Notifications",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
