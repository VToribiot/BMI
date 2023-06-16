import 'package:bmi/bottomcard.dart';
import 'package:bmi/gendercard.dart';
import 'package:bmi/infocard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

enum Gender { male, female, unselected }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Material App Bar"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                genderCard(
                  color: selectedGender == Gender.male
                      ? activeCardColor
                      : inactiveCardColor,
                  icon: Icon(
                    FontAwesomeIcons.mars,
                    size: 80.0,
                  ),
                  txt: "Male",
                  onPress: () {
                    selectedGender = Gender.male;
                    setState(() {});
                  },
                  onDoublePress: () {
                    selectedGender = Gender.unselected;
                    setState(() {});
                  },
                ),
                genderCard(
                  color: selectedGender == Gender.female
                      ? activeCardColor
                      : inactiveCardColor,
                  icon: Icon(
                    FontAwesomeIcons.venus,
                    size: 80.0,
                  ),
                  txt: "Female",
                  onPress: () {
                    selectedGender = Gender.female;
                    setState(() {});
                  },
                  onDoublePress: () {
                    selectedGender = Gender.unselected;
                    setState(() {});
                  },
                )
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Expanded(child: infoCard())],
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bottomCard(
                  num: 60,
                  title: 'WEIGHT',
                  unit: 'kg',
                ),
                bottomCard(
                  num: 18,
                  title: 'AGE',
                  unit: 'years',
                ),
              ],
            )),
            Container(
              color: footerColor,
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}
