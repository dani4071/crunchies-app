import 'package:crunchies/common/button/rounded_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/global/color.dart';
import '../profile_details.dart';



class editProfileScreen extends StatelessWidget {
  const editProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                profileDetails(isEditScreen: true,),
                SizedBox(height: 20,),
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

              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: roundedElevatedButton(onPressed: (){}, text: "Edit Profile",),
      ),
    );
  }
}
