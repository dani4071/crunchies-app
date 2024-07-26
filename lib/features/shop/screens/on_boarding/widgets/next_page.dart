import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../utilis/device/device_utility.dart';
import '../../../../../utilis/theme/custom_theme/text_theme.dart';
import '../../../controller/onboarding_controller.dart';

class nextButton extends StatelessWidget {
  const nextButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;
    final texttheme = danTexttheme.lightTexttheme;

    return Positioned(
        bottom: danDeviceUtilis.getBottomNavigationBarHeight() - 30,
        right: 10,
        child: TextButton(
          child: Obx( () => Text( controller.currentPage == 3 ? "Finish" : "Next", style: texttheme.bodyLarge!.apply(color: Color(0xffdc2332)), )),
          onPressed: () => controller.nextPage(),
        ));
  }
}
