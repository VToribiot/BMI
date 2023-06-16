import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  customButton({super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        elevation: 0.0,
        constraints: BoxConstraints.tightFor(
          height: 56.0, width: 56.0
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        fillColor: Color(0xFF4C4F5E),
        onPressed: onPressed,
    );
  }
}
