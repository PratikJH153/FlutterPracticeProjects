import 'package:flutter/material.dart';
import '../widgets/number_widget.dart';

Container sportWidget({
  @required double width,
  @required String title,
  @required int players,
  @required int coaches,
  @required String category,
  @required String position,
  @required String location,
}) {
  return Container(
    width: width,
    padding: EdgeInsets.symmetric(
      vertical: 18,
      horizontal: 20,
    ),
    margin: EdgeInsets.only(
      bottom: 24,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300],
          blurRadius: 15,
          spreadRadius: 5,
          offset: Offset(0, 6),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Row(
          children: [
            numberWidget(
              title: "Players",
              number: players,
            ),
            numberWidget(
              title: "Coaches",
              number: coaches,
            ),
            Text(
              category,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ],
        ),
        Text(
          position,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          location,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    ),
  );
}
