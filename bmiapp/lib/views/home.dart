import '../views/result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/gender_choose.dart';
import '../widgets/height_picker.dart';
import '../widgets/slider_widget.dart';
import 'package:flutter/material.dart';

enum Gender { Male, Female }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150;
  bool isMale = false;
  bool isFemale = false;
  int age = 20;
  int weight = 65;
  double bmi;

  void genderChoose(Gender gender) {
    if (gender == Gender.Male) {
      setState(() {
        isMale = !isMale;
        isFemale = false;
      });
    } else {
      setState(() {
        isFemale = !isFemale;
        isMale = false;
      });
    }
  }

  void todo(String title, bool isAdd) {
    if (title == "Age") {
      setState(() {
        if (isAdd) {
          age += 1;
        } else {
          age -= 1;
        }
      });
    } else {
      setState(() {
        if (isAdd) {
          weight += 1;
        } else {
          weight -= 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        title: Text(
          "BMI CALCULATOR",
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: Colors.grey[800],
                fontSize: 18,
              ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {
            return showDialog(
              context: context,
              builder: (context) {
                return ResultPage(
                  bmi: bmi,
                );
              },
            );
          },
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            FontAwesomeIcons.hackerrank,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SliderWidget(
                      title: "Age",
                      number: age,
                      todo: todo,
                    ),
                    SliderWidget(
                      title: "Weight",
                      number: weight,
                      todo: todo,
                    ),
                  ],
                ),
              ),
              HeightPicker(
                value: height,
                changeHeight: (val) {
                  setState(() {
                    height = val;
                  });
                },
              ),
              GenderChoose(
                isFemale: isFemale,
                isMale: isMale,
                onChoosed: genderChoose,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
