import 'package:flutter/material.dart';

Widget categoryWidget({
  @required String title,
  @required Function onSelect,
  bool isSelected = false,
}) {
  return GestureDetector(
    onTap: onSelect,
    child: Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 5,
            spreadRadius: 0.1,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    ),
  );
}
