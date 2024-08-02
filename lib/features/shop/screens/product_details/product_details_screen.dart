import 'package:crunchies/common/button/rounded_elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utilis/theme/custom_theme/text_theme.dart';


class productDetailsScreen extends StatelessWidget {
  const productDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              width: double.infinity,
              height: MediaQuery.of(context).size.width * 0.75,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name of the product", style: texttheme.titleMedium,),
                  SizedBox(height: 5,),
                  Text("\u20A61200", style: texttheme.titleMedium,),
                  SizedBox(height: 5,),
                  Text("Description", style: texttheme.titleMedium,),
                  SizedBox(height: 5,),
                  Text("DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription",),
                ],
              ),
            )
          ],
        ),
      ),


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.04
              ),
              child: Text(
                "\u20A61200",
                style: texttheme.titleMedium,
              ),
            ),
            Expanded(child: roundedElevatedButton(text: 'Add to Bag', onPressed: (){},)),
          ],
        ),
      ),
    );
  }
}
