import 'package:bmi/constant.dart';
import 'package:flutter/material.dart';

class infoCard extends StatefulWidget {
  infoCard({super.key});

  @override
  State<infoCard> createState() => _infoCardState();
}

class _infoCardState extends State<infoCard> {
  int height = 120;

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
            'HEIGHT',
            style: kTextStart,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toString(),
                style: kHeightStyle,
              ),
              Text(
                'cm',
                style: kTextStart,
              )
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: footerColor,
              overlayColor: Color(0x30D22B2B),
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 14.0
              ),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 24.0
              ),
              activeTrackColor: Colors.white,
              inactiveTrackColor: Color(0x50D22B2B)

            ),
            child: Slider(
              value: height.toDouble(),
              min: 120.0,
              max: 220.0,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            ),
          ),
        ],
      ),
    );;
  }
}
