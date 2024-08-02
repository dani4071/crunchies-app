import 'package:crunchies/common/global/color.dart';
import 'package:flutter/material.dart';

import '../../../../../utilis/constants/image_strings.dart';
import '../../../../../utilis/theme/custom_theme/text_theme.dart';

class profileDetails extends StatelessWidget {
  const profileDetails({
    super.key,
    required this.isEditScreen,
  });

  final bool isEditScreen;



  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;


    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 8,
              backgroundImage: AssetImage(danImages.profile),
            ),
            isEditScreen ?
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: gColor.withOpacity(0.3),
                  ),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 20,
                    color: gColor,
                  ),
                ),
              ),
            )
            : SizedBox(),
          ],
        ),


        SizedBox(width: 10,),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daniel Nsofor Chukwunomunso",
                style: texttheme.headlineMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5,),
              Text(
                "DanielNsoforChukwunomunso@gmail.com",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
      ],
    );
  }
}
