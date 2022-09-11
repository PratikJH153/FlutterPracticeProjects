import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightPicker extends StatelessWidget {
  final double value;
  final Function changeHeight;

  HeightPicker({
    @required this.value,
    @required this.changeHeight,
  });

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        width: double.infinity,
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
        margin: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Height",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Theme.of(context).buttonColor.withOpacity(0.6),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    value.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 26,
                      color: Theme.of(context).buttonColor,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "cm",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Theme.of(context).buttonColor.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Slider(
                value: value,
                min: 50,
                max: 250,
                divisions: 100,
                label: "${value.toString()} cm",
                activeColor: Theme.of(context).primaryColor,
                inactiveColor: Colors.grey[300],
                onChanged: changeHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
