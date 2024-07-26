import 'package:crunchies/utilis/theme/custom_theme/text_theme.dart';
import 'package:crunchies/utilis/theme/theme.dart';
import 'package:flutter/material.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key, required this.image, required this.title, required this.subtitle, required this.subtitle2});

  final String image, title, subtitle, subtitle2;

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image(image: AssetImage(image)),
          const SizedBox(height: 120,),
          Text(title, style: texttheme.titleLarge!.apply(color: Color(0xffdc2332),),),
          Text(subtitle, style: texttheme.headlineMedium, textAlign: TextAlign.center,),
          const SizedBox(height: 20,),
          Text(subtitle2, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
