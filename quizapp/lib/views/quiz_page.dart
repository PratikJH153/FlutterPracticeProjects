import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  final int questionNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Timer"),
            Row(
              children: [
                Text("05"),
                LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Colors.green[400],
                  ),
                  minHeight: 10,
                  value: 5,
                ),
                Spacer(),
                LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(
                    Colors.red[400],
                  ),
                  value: 7,
                  minHeight: 10,
                ),
                Text("07")
              ],
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "Question $questionNumber",
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "/10",
                    style: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).primaryColorLight.withOpacity(0.5),
            ),
            Text(
              "What attraction in Montreal is one of the largest in the world?",
              style: TextStyle(
                color: Theme.of(context).canvasColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                height: 1.4,
              ),
            ),
            Text("List of Answers"),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 3,
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
