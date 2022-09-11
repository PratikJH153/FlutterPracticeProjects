import 'package:flutter/material.dart';
import 'package:sportsapp/widgets/category.dart';

class SportCategoriesSheet extends StatefulWidget {
  @override
  _SportCategoriesSheetState createState() => _SportCategoriesSheetState();
}

class _SportCategoriesSheetState extends State<SportCategoriesSheet> {
  bool isExpanded = false;
  double height = 0.0;
  String selectedCategory = "All";
  void expandContainer() {
    setState(() {
      if (isExpanded) {
        height = 0.0;
        isExpanded = false;
      } else {
        height = 100;
        isExpanded = true;
      }
    });
  }

  List<String> categories = [
    "All",
    "Basketball",
    "Football",
    "Tennis",
    "Fencing",
    "Swimming",
    "Hockey",
    "Karate",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            blurRadius: 10,
            spreadRadius: 0.2,
          ),
        ],
      ),
      child: Column(
        children: [
          AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(milliseconds: 600),
            margin: EdgeInsets.only(
              left: 12,
              right: 12,
              top: 5,
            ),
            height: height,
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 2.1,
              children: isExpanded
                  ? categories.map((category) {
                      return categoryWidget(
                        title: category,
                        isSelected: category == selectedCategory,
                        onSelect: () {
                          setState(
                            () {
                              selectedCategory = category;
                            },
                          );
                        },
                      );
                    }).toList()
                  : [],
            ),
          ),
          GestureDetector(
            onTap: expandContainer,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isExpanded ? "Contract" : "Sport Categories",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  size: 32,
                  color: Theme.of(context).accentColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
