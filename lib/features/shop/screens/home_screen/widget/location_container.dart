import 'package:flutter/material.dart';
import '../../../../../common/global/color.dart';
import '../../../../../utilis/constants/text_strings.dart';
import '../../../../../utilis/theme/custom_theme/text_theme.dart';


class locationContainer extends StatelessWidget {
  const locationContainer({
    super.key,

  });


  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.location_on,
                        size: MediaQuery.of(context).size.width * 0.06,
                        color: gColor,
                      ),
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        danTexts.locationText1,
                        style: texttheme.headlineSmall?.copyWith(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                      Text(
                        danTexts.locationText2,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                        ),
                      ),
                      Text(
                        danTexts.locationText3,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: MediaQuery.of(context).size.width * 0.06,
                ),

              )
            ],
          ),
        )
    );
  }
}