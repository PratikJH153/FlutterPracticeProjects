import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Profile Page",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
