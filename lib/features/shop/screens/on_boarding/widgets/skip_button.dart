import 'package:flutter/material.dart';
import '../../../../../utilis/device/device_utility.dart';
import '../../../controller/onboarding_controller.dart';



class skipButton extends StatelessWidget {
  const skipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = OnBoardingController.instance;

    return Positioned(
        bottom: danDeviceUtilis.getBottomNavigationBarHeight() - 30,
        left: 10,
        child: TextButton(
          child: Text("Skip", style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.black), ),
          onPressed: () => controller.skipPage(),
        ));
  }
}
