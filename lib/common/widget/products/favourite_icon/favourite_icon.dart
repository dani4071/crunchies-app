import 'package:crunchies/common/global/color.dart';
import 'package:flutter/material.dart';


class danFavouriteIcon extends StatelessWidget {
  const danFavouriteIcon({
    super.key,
    this.isHome = false,
  });

  final bool isHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.065,
      width: MediaQuery.of(context).size.width * 0.065,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: isHome ? 1 : 0,
          color: isHome ? gColor : Colors.white,
        )
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: MediaQuery.of(context).size.width * 0.045,
      ),
    );
  }
}

