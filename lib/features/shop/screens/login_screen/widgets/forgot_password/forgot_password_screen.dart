import 'package:flutter/material.dart';

import '../../../../../../common/button/rounded_elevated_button.dart';
import '../../../../../../common/global/color.dart';
import '../../../../../../utilis/constants/text_strings.dart';
import '../../../../../../utilis/theme/custom_theme/text_theme.dart';

class forgottenPasswordScreen extends StatelessWidget {
  const forgottenPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        /// Appbar
        appBar: AppBar(
          title: Text("Forgot password"),
        ),

        /// Body
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// verification
              Text(
                danTexts.forgotPasswordText,
                style: texttheme.titleSmall!.apply(color: Colors.grey)
                ,),

              SizedBox(height: 20,),
              /// Text form field
              Text("Mobile Number"),
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

              SizedBox(height: 20,),

              /// verify button
              roundedElevatedButton(text: "Sent OTP", onPressed: () {},),

            ],
          ),
        ),
      ),
    );

  }
}
