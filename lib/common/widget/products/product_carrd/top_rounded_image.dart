import 'package:flutter/material.dart';


class topRoundedImage extends StatelessWidget {
  const topRoundedImage({
    super.key,
    // required this.foods,
    this.height = 120,
    required this.image,
  });

  // final Product foods;
  final double? height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}