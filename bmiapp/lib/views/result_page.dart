import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  ResultPage({this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "18",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w800,
                      fontSize: 90,
                    ),
                  ),
                  TextSpan(
                    text: ".67",
                    style: TextStyle(
                      color: Theme.of(context).buttonColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Normal",
              style: TextStyle(
                color: Colors.green[300],
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Normal BMI range: 18.5 kg/m2 - 25 kg/m2\nPonderal Index: 18.64 kg/m3",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14,
                height: 1.6,
              ),
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.repeat_rounded),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onPressed: () {},
              label: Text("Retry"),
            ),
          ],
        ),
      ),
    );
  }
}
