import 'package:crunchies/features/shop/controller/onboarding_controller.dart';
import 'package:crunchies/features/shop/screens/on_boarding/widgets/dot_navigation_indicator.dart';
import 'package:crunchies/features/shop/screens/on_boarding/widgets/next_page.dart';
import 'package:crunchies/features/shop/screens/on_boarding/widgets/onboarding_page.dart';
import 'package:crunchies/features/shop/screens/on_boarding/widgets/skip_button.dart';
import 'package:crunchies/utilis/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utilis/constants/text_strings.dart';

class onBoardingScreen extends StatelessWidget {
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              onBoardingPage(
                image: danImages.Launchtime1,
                title: danTexts.onBoardingTitle1,
                subtitle: danTexts.onBoardingSubTitle1,
                subtitle2: danTexts.onBoardingThirdTitle1,
              ),
              onBoardingPage(
                image: danImages.LandingPage2,
                title: danTexts.onBoardingTitle2,
                subtitle: danTexts.onBoardingSubTitle2,
                subtitle2: danTexts.onBoardingThirdTitle2,
              ),
              onBoardingPage(
                image: danImages.FrontCar,
                title: danTexts.onBoardingTitle3,
                subtitle: danTexts.onBoardingSubTitle3,
                subtitle2: danTexts.onBoardingThirdTitle3,
              ),
              onBoardingPage(
                image: danImages.OldFashioned,
                title: danTexts.onBoardingTitle4,
                subtitle: danTexts.onBoardingSubTitle4,
                subtitle2: danTexts.onBoardingThirdTitle4,
              ),
            ],
          ),


          const nextButton(),
          const dotNavigationIndicator(),
          const skipButton(),
        ],
      ),
    );
  }
}
