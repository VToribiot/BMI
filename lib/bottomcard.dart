import 'package:bmi/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

class bottomCard extends StatefulWidget {
  bottomCard({super.key, required this.num, required this.title, required this.unit});

  final int num;
  final String title;
  final String unit;


  @override
  State<bottomCard> createState() => _bottomCardState();
}

class _bottomCardState extends State<bottomCard> {

  @override
  void initState() {
    int myNum = widget.num;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 170.0,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF111328),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: kTextStart,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                widget.num.toString(),
                style: kHeightStyle,
              ),
              Text(
                widget.unit,
                style: kTextStart,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customButton(
                  icon: FontAwesomeIcons.plus,
                  onPressed: () {
                    setState(() {
                      widget.num++;
                    });
                  }),
              customButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    if (widget.title == 'WEIGHT' && widget.num > 0) {
                      widget.num--;
                    } else if (widget.title == 'AGE' && widget.num > 18) {
                      widget.num--;
                    }
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}
