import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';

class genderCard extends StatelessWidget {
  genderCard(
      {super.key, required this.color, required this.icon, required this.txt, required this.onPress, required this.onDoublePress});

  final Color color;
  final Widget icon;
  final String txt;
  final void Function() onPress;
  final void Function() onDoublePress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 200.0,
        width: 170.0,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              height: 20.0,
            ),
            Text(txt, style: kTextStart,),
          ],
        ),
      ),
      onTap: onPress,
      onDoubleTap: onDoublePress,
    );
  }
}
