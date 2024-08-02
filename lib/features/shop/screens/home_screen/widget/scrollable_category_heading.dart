import 'package:crunchies/utilis/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../utilis/theme/custom_theme/text_theme.dart';


class scrollableCategoryHeading extends StatefulWidget {

  final String name;
  final String image;
  const scrollableCategoryHeading({super.key,
    required this.name, required this.image
  });

  @override
  State<scrollableCategoryHeading> createState() => _scrollableCategoryHeadingState();
}

class _scrollableCategoryHeadingState extends State<scrollableCategoryHeading> {
  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7),
        height: 40,
        margin: EdgeInsets.only(top: 10, right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // color: Colors.white.withOpacity(0.5),
          color: Colors.red,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white
              ),
              child: Image.asset(widget.image, scale: 3,),
            ),
            SizedBox(width: 3,),
            Text(
              widget.name.toUpperCase(),
              style: texttheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }
}


class categoriesModel {
  final String title;
  final String image;
  final int ind;


  categoriesModel(this.title, this.ind, this.image);

  static List<categoriesModel> list = [
    categoriesModel("FOOD", 0, danImages.soup),
    categoriesModel("PROTEIN", 1, danImages.turkey),
    categoriesModel("PASTRY", 2, danImages.donut),
    categoriesModel("CAKE",  3, danImages.cake),
    categoriesModel("BREAD", 4, danImages.bread),
    categoriesModel("ICE CREAM", 5, danImages.iceCream),
    categoriesModel("SHAWARMA", 6, danImages.shawarma),
    categoriesModel("PROMO", 7, danImages.promo),
    categoriesModel("DRINKS", 7, danImages.drink),
  ];
}


