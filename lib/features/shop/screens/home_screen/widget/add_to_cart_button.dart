import 'package:flutter/material.dart';

import '../../../../../common/global/color.dart';


class addToCartButton extends StatelessWidget {
  const addToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                    width: 1,
                    color: gColor
                )
            )
        ),
        child: Text(
          "Add to bag",
          style: TextStyle(
            color: gColor
          ),
        ),
      ),
    );
  }
}