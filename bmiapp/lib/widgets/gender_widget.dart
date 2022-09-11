import 'package:flutter/material.dart';

Widget genderWidget({
  BuildContext context,
  String gender,
  IconData iconData,
  Function onChoosed,
  bool choose = false,
}) {
  return Expanded(
    child: GestureDetector(
      onTap: onChoosed,
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(10),
          border: choose
              ? Border.all(
                  color: Theme.of(context).primaryColor.withOpacity(0.6),
                  width: 2,
                )
              : Border(),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[800].withOpacity(0.08),
              spreadRadius: 0.1,
              blurRadius: 20,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 60,
              color: Theme.of(context).buttonColor,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              gender,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Theme.of(context).buttonColor.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
