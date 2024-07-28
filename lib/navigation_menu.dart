import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/features/personalization/screens/profile/profile_screen.dart';
import 'package:crunchies/features/shop/screens/favourite/favourite_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/shop/screens/cart/cart_screen.dart';
import 'features/shop/screens/home_screen/home_screen.dart';
import 'features/shop/screens/order_screen/order_screen.dart';

class navigationMenu extends StatelessWidget {
  const navigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      backgroundColor: wColor,

      /// floating button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(width: 7, color: Colors.white, ),
            ),
            onPressed: () {
              Get.to(() => cartScreen());
            },


            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.red,
              ),
              child: Icon(Icons.card_travel),
            ),
          ),
        ),
      ),

      /// here i put their own
      bottomNavigationBar: Obx(
        () => ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          child: NavigationBar(
            height: 70,
            elevation: 0,
            backgroundColor: Colors.white,
            shadowColor: Colors.purple,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              navigationDestination(
                index: 0,
                icon: Icons.home_filled,
              ),
              navigationDestination(
                index: 1,
                icon: Icons.favorite_border,
              ),
              SizedBox(
                width: 5,
              ),
              navigationDestination(
                index: 2,
                icon: Icons.format_align_justify,
              ),
              navigationDestination(
                index: 3,
                icon: Icons.person,
              ),
              //GestureDetector(onTap: () {controller.selectedIndex.value = 1;},child: Container(width: double.infinity, height: double.infinity,color: Colors.transparent,child: Icon(Icons.search, size: 30, color: controller.selectedIndex.value == 1 ? Colors.blue : isDark ? Colors.white : Colors.black,),)),
            ],
          ),
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

    return GestureDetector(
      onTap: () {
        controller.selectedIndex.value = index;
      },
      child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          child: Icon(
            icon,
            size: 30,
            color: controller.selectedIndex.value == index
                ? Colors.black
                : Colors.black,
          )),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    homeScreen(),
    favouriteScreen(),
    orderScreen(),
    profileScreen()
  ];
}

// class BottomNavController extends GetxController {
//   var selectedIndex = 0.obs;
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   final controller = Get.put(BottomNavController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.yellow,
//       appBar: AppBar(
//         title: Text('BottomNavigationBar Example'),
//       ),
//       body: Center(
//         child: Text('Home Screen'),
//       ),
//       bottomNavigationBar: Obx(
//             () => ClipRRect(
//           borderRadius: BorderRadius.circular(30.0), // Set the border radius
//           child: BottomNavigationBar(
//             backgroundColor: Colors.blue, // Set the background color to blue
//             currentIndex: controller.selectedIndex.value,
//             onTap: (index) => controller.selectedIndex.value = index,
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.business),
//                 label: 'Business',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.school),
//                 label: 'School',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class BottomNavController extends GetxController {
//   var selectedIndex = 0.obs;
// }

/// my own
