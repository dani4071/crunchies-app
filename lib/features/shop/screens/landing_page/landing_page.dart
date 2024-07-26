import 'package:crunchies/features/shop/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utilis/theme/custom_theme/text_theme.dart';


class landingPage extends StatelessWidget {
  const landingPage({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /// Image
            Image.asset("assets/logo/logo2.png", scale: 2,),

            /// Text
            Text(
              "Sign in & Register \n to \n Crunchies",
              style: texttheme.headlineLarge, textAlign: TextAlign.center,),

            /// Buttons
            Column(
              children: [
                /// Google button
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Image.asset("assets/logo/Google_Logo-removebg-preview.png", fit: BoxFit.cover,)
                          ),
                          SizedBox(width: 10,),
                          Text("Continue with Google"),
                        ],
                      ),
                      Container(
                        width: 30,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade400,
                        ),
                        child: Icon(
                          Icons.arrow_forward
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),

                /// Email button
                GestureDetector(
                  onTap: (){
                    Get.to(() => loginScreen());
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                width: 30,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(Icons.email, size: 27,)
                            ),
                            SizedBox(width: 10,),
                            Text("Continue with Google"),
                          ],
                        ),
                        Container(
                          width: 30,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey.shade400,
                          ),
                          child: Icon(
                              Icons.arrow_forward
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                /// Privacy policy
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      children: [
                        TextSpan(text: "By continuing, you agree to our ", style: TextStyle()),
                        TextSpan(text: "Terms & Conditions and privacy policy", style: TextStyle(color: Colors.red)),
                      ]
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
