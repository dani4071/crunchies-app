import 'package:crunchies/features/personalization/screens/profile/profile_screen.dart';
import 'package:crunchies/features/shop/screens/favourite/favourite_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/shop/screens/cart/cart_screen.dart';
import 'features/shop/screens/home_screen/home_screen.dart';


class navigationMenu extends StatelessWidget {
  const navigationMenu({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());

    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
          side: BorderSide(width: 5, color: Colors.blue)
        ),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.red
          ),
          child: Icon(
            Icons.add
          ),
        ),
      ),

      bottomNavigationBar: Obx(
            () =>  NavigationBar(
              height: 70,

              elevation: 0,
              backgroundColor: Colors.red,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) => controller.selectedIndex.value = index,
              destinations: [
                navigationDestination(index: 0, icon: Icons.home_filled,),
                navigationDestination(index: 1, icon: Icons.favorite_border,),
                navigationDestination(index: 2, icon: Icons.format_align_justify,),
                navigationDestination(index: 2, icon: Icons.person,),
                //GestureDetector(onTap: () {controller.selectedIndex.value = 1;},child: Container(width: double.infinity, height: double.infinity,color: Colors.transparent,child: Icon(Icons.search, size: 30, color: controller.selectedIndex.value == 1 ? Colors.blue : isDark ? Colors.white : Colors.black,),)),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class navigationDestination extends StatelessWidget {
  const navigationDestination({
    super.key,
    required this.index,
    required this.icon,
  });

  final int index;
  final IconData icon;

  @override
  Widget build(BuildContext context) {


    final controller = Get.put(NavigationController());

    return GestureDetector(onTap: () {
      controller.selectedIndex.value = index;
      },child: Container(width: double.infinity, height: double.infinity,color: Colors.transparent,child: Icon(icon, size: 30, color: Colors.yellow),));
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [homeScreen(), favouriteScreen(), cartScreen(), profileScreen()];

}