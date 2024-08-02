import 'package:flutter/material.dart';

import '../../../../../common/global/color.dart';
import '../../../../../utilis/theme/custom_theme/text_theme.dart';


class profileButtons extends StatelessWidget {
  const profileButtons({
    super.key,
    required this.title,
    required this.iconn,
    required this.onpressed,
  });

  final String title;
  final IconData iconn;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.width / 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  iconn,
                  color: gColor,
                  size: 30,
                ),
                SizedBox(width: 10,),
                Text(
                  title,
                  style: texttheme.titleSmall,
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios_sharp),
          ],
        ),
      ),
    );
  }
}