import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/features/shop/screens/home_screen/widget/banner_carousel.dart';
import 'package:crunchies/features/shop/screens/home_screen/widget/location_container.dart';
import 'package:crunchies/features/shop/screens/home_screen/widget/scrollable_category_heading.dart';
import 'package:crunchies/features/shop/screens/home_screen/widget/vertical_list.dart';
import 'package:crunchies/utilis/constants/image_strings.dart';
import 'package:crunchies/utilis/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/layouts/grid_layout.dart';
import '../../../../utilis/theme/custom_theme/text_theme.dart';


class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: wColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// App bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(danTexts.homeAppBarTitle, style: texttheme.headlineSmall,),
                        Text(danTexts.homeAppBaeSubTitle),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.search_rounded,
                          size: MediaQuery.of(context).size.width * 0.06,
                          color: gColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),


                /// Location
                locationContainer(),
                SizedBox(height: 10,),


                /// Banner
                bannerCarousel(),
                SizedBox(height: 0,),


                /// scrollable category heading
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categoriesModel.list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      final category = categoriesModel.list[index];
                      return Row(
                        children: [
                          scrollableCategoryHeading(
                              name: category.title,
                              image: category.image,
                          )
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),

                /// Grid items
                danGridLayout(
                  // itemCount: myProducts.allProduct.length,
                  // itemBuilder: (_, index) {
                  //   productCardVertical(foods: myProducts.allProduct[index],);
                  // },
                ),
                SizedBox(height: 10,),

                Text(
                  "All in Crunchies",
                  style: texttheme.titleMedium,
                ),
                SizedBox(height: 10,),

                /// vertical list
                homeVerticalList()

              ],
            ),
          ),
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




