import 'package:flutter/material.dart';
import '../widgets/bottom_bar_widget.dart';
import './coaching_page.dart';
import './dashboard_page.dart';
import './notificaiton_page.dart';
import './profile_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  PageController pageController;
  List<String> appBarTitle = [
    "Dashboard",
    "Coaching Staff",
    "Notification",
    "Profile",
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void onSelectItem(int index) {
    setState(() {
      currentIndex = index;
    });
    pageController.animateToPage(
      currentIndex,
      duration: Duration(
        milliseconds: 200,
      ),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Text(
            appBarTitle[currentIndex],
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 22,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              blurRadius: 10,
              spreadRadius: 0.1,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bottomItem(
              title: "Dashboard",
              isIcon: true,
              isSelected: currentIndex == 0,
              onSelect: () => onSelectItem(0),
            ),
            bottomItem(
              title: "Coaching Staff",
              imageUrl: "assets/images/whistle1.png",
              isSelected: currentIndex == 1,
              onSelect: () => onSelectItem(1),
            ),
            bottomItem(
              title: "Notification",
              imageUrl: "assets/images/notification.png",
              isSelected: currentIndex == 2,
              onSelect: () => onSelectItem(2),
            ),
            bottomItem(
              title: "Profile",
              imageUrl: "assets/images/profile.png",
              isSelected: currentIndex == 3,
              onSelect: () => onSelectItem(3),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          DashboardPage(),
          CoachingStaffPage(),
          NotificationPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}


// BottomNavigationBar(
//         elevation: 30,
//         selectedItemColor: Theme.of(context).primaryColor,
//         onTap: (int index) {
//           setState(() {
//             currentIndex = index;
//           });
//           pageController.animateToPage(
//             index,
//             duration: Duration(
//               milliseconds: 200,
//             ),
//             curve: Curves.easeIn,
//           );
//         },
//         currentIndex: currentIndex,
//         type: BottomNavigationBarType.fixed,
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Dashboard",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: "Coaching Staff",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: "Notification",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.supervised_user_circle),
//             label: "Profile",
//           )
//         ],
//       ),