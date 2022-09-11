import 'package:flutter/material.dart';

InkWell bottomItem({
  @required String title,
  String imageUrl,
  bool isIcon = false,
  double height = 36,
  double width = 36,
  bool isSelected = false,
  @required Function onSelect,
}) {
  return InkWell(
    onTap: onSelect,
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isIcon
              ? Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                    bottom: 5,
                  ),
                  child: Icon(
                    Icons.home_filled,
                    size: 25,
                    color: Colors.black.withOpacity(0.75),
                  ),
                )
              : Image.asset(
                  imageUrl,
                  width: width,
                  height: height,
                ),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
            ),
          ),
          AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(
              milliseconds: 160,
            ),
            margin: EdgeInsets.symmetric(
              vertical: isSelected ? 5 : 0,
            ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: Colors.black,
            // ),
          )
        ],
      ),
    ),
  );
}
