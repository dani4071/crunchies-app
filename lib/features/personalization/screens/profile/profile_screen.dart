import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/features/personalization/screens/profile/widgets/edit_profile/edit_profile_screen.dart';
import 'package:crunchies/features/personalization/screens/profile/widgets/profile_buttons.dart';
import 'package:crunchies/features/personalization/screens/profile/widgets/profile_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utilis/theme/custom_theme/text_theme.dart';


class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: wColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Profile",
                style: texttheme.titleMedium,
              ),
              SizedBox(height: 10,),

              /// profile image / name / email
              profileDetails(isEditScreen: false,),
              SizedBox(height: 20,),

              /// My Account
              Text(
                "My Account",
                style: texttheme.titleMedium,
              ),

              SizedBox(height: 10,),

              profileButtons(
                title: 'My Profile',
                iconn: Icons.person,
                onpressed: (){
                  Get.to(() => editProfileScreen());
                },
              ),

              SizedBox(height: 20,),

              /// More
              Text(
                "More",
                style: texttheme.titleMedium,
              ),

              SizedBox(height: 10,),

              profileButtons(
                title: 'Support',
                iconn: Icons.phone,
                onpressed: (){},
              ),

              SizedBox(height: 10,),

              profileButtons(
                title: 'Log out',
                iconn: Icons.logout,
                onpressed: (){},
              ),

            ],
          ),
        ),
      ),
    );
  }
}



