import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utilis/device/device_utility.dart';
import '../../../controller/onboarding_controller.dart';


class dotNavigationIndicator extends StatelessWidget {
  const dotNavigationIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: danDeviceUtilis.getBottomNavigationBarHeight() - 15,
        left: danDeviceUtilis.getScreenWidth(context) / 2.5,
        child: SmoothPageIndicator(
          count: 4,
          effect: SwapEffect(dotColor: Colors.pink.withOpacity(0.2), activeDotColor: Color(0xffdc2332)),
          // effect: const ExpandingDotsEffect(activeDotColor: danColors.primary, dotHeight: 6),
          controller: controller.pageController,
        ));
  }
}