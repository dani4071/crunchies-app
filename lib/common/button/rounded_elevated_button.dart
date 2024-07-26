import 'package:flutter/material.dart';

import '../global/color.dart';


class roundedElevatedButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const roundedElevatedButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.width / 8,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: gColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
