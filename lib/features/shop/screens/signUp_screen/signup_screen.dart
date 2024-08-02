import 'package:crunchies/common/button/rounded_elevated_button.dart';
import 'package:crunchies/features/shop/screens/signUp_screen/widget/verification_screen/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/global/color.dart';
import '../../../../utilis/theme/custom_theme/text_theme.dart';

class signUpScreen extends StatelessWidget {
  const signUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(

        /// Appbar
        appBar: AppBar(
          title: Text(
            "Register New Account"
          ),
        ),

        /// Body
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                /// Image
                Image.asset("assets/logo/logo2.png", scale: 2,),

                /// Sign Up Form
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Full Name"),
                    TextFormField(
                      cursorColor: gColor,
                      // controller: controller.email,
                      // validator: (value) => danValidator.validateEmail(value),
                      decoration: InputDecoration(
                          labelText: "Enter your Full Name",
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: gColor),
                          ),
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: gColor
                      ),
                    ),

                    const SizedBox(height: 15,),

                    Text("Email Address"),
                    TextFormField(
                      cursorColor: gColor,
                      // controller: controller.email,
                      // validator: (value) => danValidator.validateEmail(value),
                      decoration: InputDecoration(
                          labelText: "Enter your Email",
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


                    Text("Phone Number"),
                    TextFormField(
                      cursorColor: gColor,
                      // controller: controller.email,
                      // validator: (value) => danValidator.validateEmail(value),
                      decoration: InputDecoration(
                          labelText: "Enter your Phone Number",
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: gColor),
                          ),
                          prefixIcon: Icon(Icons.phone),
                          prefixIconColor: gColor
                      ),
                    ),

                    const SizedBox(height: 15,),

                    Text("Birthday"),
                    TextFormField(
                      cursorColor: gColor,
                      readOnly: true,
                      onTap: () async {
                        /// figure out how to use getX for the date
                        DateTime? dateTime = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now(),
                        );

                      },
                      // controller: controller.email,
                      // validator: (value) => danValidator.validateEmail(value),
                      decoration: InputDecoration(
                          labelText: "Enter your Birthday Date",
                          labelStyle: TextStyle(color: Colors.grey),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: gColor),
                          ),
                          prefixIcon: Icon(Icons.calendar_today),
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
                        labelText: "Enter your Password",
                        prefixIcon: const Icon(Icons.lock_open),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: gColor),
                        ),
                        prefixIconColor: gColor,
                        suffixIcon: Icon(Icons.visibility_outlined),
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 30,),

                /// Register button
                roundedElevatedButton(
                    text: "Register account",
                    onPressed: () {
                  Get.to(() => verificationScreen());
                }),

                const SizedBox(height: 10,),

                /// Login button
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Text.rich(
                        TextSpan(
                            children: [
                              TextSpan(text: "or "),
                              TextSpan(text: "Sign in ", style: texttheme.bodyLarge!.apply(color: gColor),),
                              TextSpan(text: "with your account"),
                            ]
                        )
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
