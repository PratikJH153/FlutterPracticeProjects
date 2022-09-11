import 'package:flutter/material.dart';
import 'package:sportsapp/models/sport.dart';
import '../models/data.dart';
import './main_content.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isExtended = false;

  void _onFabPress() {
    setState(() {
      sports.add(
        Sport(
          category: "Basketball",
          title: "Nike Basketball Club Dwarka",
          players: 87,
          coaches: 12,
          position: "Center Head: Marco Reus",
          location: "Location: BBPS, Plot-14, Sector-12, Dwarka, New Delhi",
        ),
      );
      isExtended = sports.length > 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _onFabPress,
        splashColor: Colors.transparent,
        highlightElevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        elevation: 0,
        backgroundColor: isExtended ? Colors.black : Colors.transparent,
        label: AnimatedSwitcher(
          duration: Duration(milliseconds: 600),
          transitionBuilder: (Widget child, Animation<double> animation) =>
              FadeTransition(
            opacity: animation,
            child: SizeTransition(
              child: child,
              sizeFactor: animation,
              axis: Axis.horizontal,
            ),
          ),
          child: isExtended
              ? Icon(
                  Icons.add,
                  color: Colors.white,
                )
              : Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Add New Academy",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
        ),
      ),
      body: MainContent(),
    );
  }
}

// InkWell(
//         onTap: () {
//           checkLength();
//           setState(
//             () {
//               sports.add(
//                 Sport(
//                   category: "Basketball",
//                   title: "Nike Basketball Club Dwarka",
//                   players: 87,
//                   coaches: 12,
//                   position: "Center Head: Marco Reus",
//                   location:
//                       "Location: BBPS, Plot-14, Sector-12, Dwarka, New Delhi",
//                 ),
//               );
//             },
//           );
//         },
//         child: AnimatedContainer(
//           curve: Curves.fastLinearToSlowEaseIn,
//           duration: Duration(
//             milliseconds: 1500,
//           ),
//           decoration: isAddChange
//               ? BoxDecoration(
//                   shape: BoxShape.circle, color: Theme.of(context).primaryColor)
//               : BoxDecoration(
//                   color: Colors.transparent,
//                 ),
//           child: isAddChange
//               ? Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Icon(
//                     Icons.add,
//                     size: 24,
//                     color: Colors.white,
//                   ),
//                 )
//               : Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.add),
//                     Text("Add an Academy"),
//                   ],
//                 ),
//         ),
//       ),
