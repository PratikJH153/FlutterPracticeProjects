import 'package:flutter/material.dart';

Expanded numberWidget({
  @required String title,
  @required int number,
}) {
  return Expanded(
    child: Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(
              right: 6,
              top: 16,
              bottom: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text(
              number.toString(),
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.grey[500],
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
