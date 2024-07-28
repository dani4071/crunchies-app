import 'package:carousel_slider/carousel_slider.dart';
import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/features/shop/screens/home_screen/widget/banner_carousel.dart';
import 'package:crunchies/utilis/constants/image_strings.dart';
import 'package:crunchies/utilis/constants/text_strings.dart';
import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Column(
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
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.search_rounded,
                          size: 30,
                          color: gColor,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),


                /// Location
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.width / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.red.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(
                                  Icons.location_on,
                                  size: 30,
                                  color: gColor,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(danTexts.locationText1, style: texttheme.headlineSmall,),
                                Text(danTexts.locationText2),
                                Text(danTexts.locationText3),
                              ],
                            ),
                          ],
                        ),

                        IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios_sharp),
                        )
                      ],
                    ),
                  )
                ),
                SizedBox(height: 10,),


                /// Banner
                bannerCarousel()
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}


