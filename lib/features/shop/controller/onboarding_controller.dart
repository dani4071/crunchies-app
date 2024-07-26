import 'package:crunchies/features/shop/screens/landing_page/landing_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  final pageController = PageController();
  Rx<int> currentPage = 0.obs;



  void updatePageIndicator(index){
    currentPage.value = index;
  }


  void dotNavigationClick(index){
    currentPage.value = index;
    pageController.jumpToPage(index);
  }


  void nextPage(){
    if(currentPage.value == 3){
      final storage = GetStorage();

      if(kDebugMode){
        print("===============================Get Storage Next Button ===============");
        print(storage.read("ISFIRSTTIME"));
      }

      storage.write("ISFIRSTTIME", false);

      if(kDebugMode){
        print("===============================Get Storage Next Buttonnnn ===============");
        print(storage.read("ISFIRSTTIME"));
      }
      Get.offAll(const landingPage());

    } else {
      final page = currentPage.value + 1;
      pageController.jumpToPage(page);
    }
  }


  void skipPage() {
    // currentPage.value = 3;
    pageController.jumpToPage(3);
    // Get.offAll(const landingPage());
  }
}