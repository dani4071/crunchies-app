import 'package:crunchies/common/widget/products/product_carrd/top_rounded_image.dart';
import 'package:crunchies/features/shop/screens/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../features/shop/models/category_model.dart';
import '../../../../features/shop/screens/home_screen/widget/add_to_cart_button.dart';
import '../../../../utilis/theme/custom_theme/text_theme.dart';
import '../favourite_icon/favourite_icon.dart';


class productCardVertical extends StatelessWidget {
  const productCardVertical({
    super.key,
    required this.foods,
  });

  final Product foods;

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: (){
        Get.to(() => productDetailsScreen());
      },
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Stack(
              children: [
                topRoundedImage(image: foods.image,),
                Positioned(
                  top: 5,
                  right: 5,
                  child: danFavouriteIcon(),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("foods.nameeeeeeeeeeeeeeeeeeeee", maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text("\u20A6${foods.price}", style: texttheme.titleSmall,),
            ),


            addToCartButton(),
          ],
        ),
      ),
    );
  }
}