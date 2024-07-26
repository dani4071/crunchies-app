import 'package:crunchies/common/button/rounded_elevated_button.dart';
import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/common/widget/home.dart';
import 'package:crunchies/features/shop/screens/home_screen/home_screen.dart';
import 'package:crunchies/features/shop/screens/login_screen/widgets/forgot_password/forgot_password_screen.dart';
import 'package:crunchies/features/shop/screens/on_boarding/onboarding_screen.dart';
import 'package:crunchies/features/shop/screens/signUp_screen/signup_screen.dart';
import 'package:crunchies/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utilis/theme/custom_theme/text_theme.dart';


class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(

        /// Appbar
        appBar: AppBar(
          title: Text("Sign In"),
        ),

        /// Body
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                /// image
                Image.asset("assets/logo/logo2.png", scale: 2,),

                /// Login Form
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email Address"),
                    TextFormField(
                      cursorColor: gColor,
                      // controller: controller.email,
                      // validator: (value) => danValidator.validateEmail(value),
                      decoration: InputDecoration(
                        labelText: "Enter email",
                        labelStyle: TextStyle(color: Colors.grey),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: gColor),
                        ),
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: gColor
                      ),
                    ),

                    const SizedBox(height: 15,),

                    const Text('Password'),
                    TextFormField(
                      // validator: (value) => danValidator.validateEmptyText("password", value),
                      // obscureText: controller.hidePassword.value,
                      // controller: controller.password,
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock_open),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: gColor),
                        ),
                        prefixIconColor: gColor,
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        TextButton(
                            onPressed: () {
                              Get.to(() => forgottenPasswordScreen());
                            },
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(color: Colors.grey),
                            ))
                      ],
                    ),
                  ],
                ),

                /// Login button
                roundedElevatedButton(
                  text: "Login",
                  onPressed: () {
                  Get.offAll(() => navigationMenu());
                },),

                const SizedBox(height: 10,),

                /// sign Up button
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => signUpScreen());
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: "or "),
                          TextSpan(text: "Register ", style: texttheme.bodyLarge!.apply(color: gColor),),
                          TextSpan(text: "a new account"),
                        ]
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
