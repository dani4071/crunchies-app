import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../../utilis/constants/image_strings.dart';


class bannerCarousel extends StatelessWidget {
  const bannerCarousel({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    List imageList = [
      {"id": 1, "image_path": danImages.Banner1},
      {"id": 2, "image_path": danImages.Banner2},
      {"id": 3, "image_path": danImages.Banner3},
    ];

    return Stack(
      children: [
        CarouselSlider(
          items: imageList.map(
                (item) => ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                item['image_path'],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ).toList(),
          options: CarouselOptions(
            scrollPhysics: BouncingScrollPhysics(),
            autoPlay: true,
            aspectRatio: 2,
            viewportFraction: 1,
            autoPlayAnimationDuration: Duration(microseconds: 1),
          ),
        )
      ],
    );
  }
}