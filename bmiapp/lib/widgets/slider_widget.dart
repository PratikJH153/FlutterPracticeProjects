import 'dart:ui';

import '../widgets/add_button.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  final String title;
  final int number;
  final Function todo;

  SliderWidget({
    @required this.title,
    @required this.number,
    @required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[800].withOpacity(0.08),
            spreadRadius: 0.1,
            blurRadius: 20,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              color: Theme.of(context).buttonColor.withOpacity(0.6),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: Text(
              number.toString(),
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 40,
                color: Theme.of(context).buttonColor,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              addButton(
                context: context,
                iconData: Icons.remove,
                isadd: false,
                todo: () => todo(title, false),
              ),
              SizedBox(
                width: 20,
              ),
              addButton(
                context: context,
                iconData: Icons.add,
                isadd: true,
                todo: () => todo(title, true),
              ),
            ],
          )
        ],
      ),
    );
  }
}
