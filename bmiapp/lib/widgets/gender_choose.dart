import 'package:bmiapp/views/home.dart';
import 'package:bmiapp/widgets/gender_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderChoose extends StatelessWidget {
  final bool isMale;
  final bool isFemale;
  final Function onChoosed;

  GenderChoose({
    @required this.isMale,
    @required this.isFemale,
    @required this.onChoosed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          left: 35,
          right: 35,
          bottom: 90,
        ),
        child: Row(
          children: [
            genderWidget(
              context: context,
              gender: "MALE",
              iconData: FontAwesomeIcons.mars,
              choose: isMale,
              onChoosed: () => onChoosed(Gender.Male),
            ),
            SizedBox(
              width: 20,
            ),
            genderWidget(
              context: context,
              gender: "FEMALE",
              iconData: FontAwesomeIcons.venus,
              choose: isFemale,
              onChoosed: () => onChoosed(Gender.Female),
            ),
          ],
        ),
      ),
    );
  }
}
