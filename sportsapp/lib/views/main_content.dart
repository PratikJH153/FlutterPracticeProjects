import 'package:flutter/material.dart';
import '../widgets/sport_widget.dart';
import '../widgets/sport_categories_sheet.dart';
import '../models/data.dart';

class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          SportCategoriesSheet(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 30,
              ),
              child: ListView.builder(
                itemCount: sports.length,
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) {
                  return sportWidget(
                    width: width,
                    title: sports[index].title,
                    players: sports[index].players,
                    coaches: sports[index].coaches,
                    category: sports[index].category,
                    position: sports[index].position,
                    location: sports[index].location,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
