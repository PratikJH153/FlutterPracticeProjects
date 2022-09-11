import 'package:flutter/material.dart';

Widget addButton({
  @required BuildContext context,
  @required IconData iconData,
  @required bool isadd,
  @required Function todo,
}) {
  return InkWell(
    onTap: todo,
    child: Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey[100],
          width: 4,
        ),
      ),
      child: Icon(
        iconData,
        size: 29,
        color: Theme.of(context).primaryColor,
      ),
    ),
  );
}
