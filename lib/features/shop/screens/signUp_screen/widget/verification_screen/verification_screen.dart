import 'package:crunchies/common/button/rounded_elevated_button.dart';
import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/utilis/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../../utilis/theme/custom_theme/text_theme.dart';


class verificationScreen extends StatelessWidget {
  const verificationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        /// Appbar
        appBar: AppBar(
          title: Text("Verification"),
        ),

        /// Body
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [

              /// verification
              Text(
                danTexts.verificationText,
                style: texttheme.titleSmall!.apply(color: Colors.grey)
                ,),

              SizedBox(height: 20,),
              /// Text form field
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: gColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(height: 20,),


              /// resend code
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "I didn't receive code ", style: texttheme.titleSmall!.apply(color: Colors.grey)),
                    TextSpan(text: "Resend code", style: texttheme.titleSmall!.apply(color: gColor))
                  ]
                )
              ),
              SizedBox(height: 20,),

              /// verify button
              roundedElevatedButton(text: "Verify Me", onPressed: () {},),

            ],
          ),
        ),
      ),
    );
  }
}
