import 'package:crunchies/common/global/color.dart';
import 'package:crunchies/features/shop/screens/favourite/widget/favorite_list.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/products/favourite_icon/favourite_icon.dart';
import '../../../../utilis/theme/custom_theme/text_theme.dart';
import '../../models/category_model.dart';

class favouriteScreen extends StatelessWidget {
  const favouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final texttheme = danTexttheme.lightTexttheme;

    return SafeArea(
      child: Scaffold(
        backgroundColor: wColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// App bar
                Text(
                  "Favorites",
                  style: texttheme.titleMedium,
                ),
                SizedBox(
                  height: 10,
                ),

                // mine
                // ListView.builder(
                //   itemCount: myProducts.allProduct.length,
                //   shrinkWrap: true,
                //   scrollDirection: Axis.vertical,
                //   physics: NeverScrollableScrollPhysics(),
                //   itemBuilder: (_, index) {
                //     final data = myProducts.allProduct[index];
                //     return Padding(
                //       padding: const EdgeInsets.symmetric(vertical: 8.0),
                //       child: Container(
                //         width: double.infinity,
                //         height: MediaQuery.of(context).size.width / 3.5,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(10),
                //             color: Colors.blue
                //         ),
                //         child: Padding(
                //           padding: const EdgeInsets.all(8.0),
                //           child: Row(
                //             crossAxisAlignment: CrossAxisAlignment.end,
                //             children: [
                //               Container(
                //                 height: double.infinity,
                //                 width: MediaQuery.of(context).size.width * 0.3,
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(20),
                //                   color: Colors.green,
                //                 ),
                //               ),
                //               SizedBox(width: 10,),
                //
                //               Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text("dataaaaaaaaaaaaaaaaa"),
                //                   Text("data"),
                //                   Spacer(),
                //
                //                   SizedBox(
                //                     width: MediaQuery.of(context).size.width * 0.45,
                //                     height: MediaQuery.of(context).size.width * 0.07,
                //                     child: ElevatedButton(
                //                       onPressed: () {},
                //                       style: ElevatedButton.styleFrom(
                //                           shape: RoundedRectangleBorder()),
                //                       child: Text("data"),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(width: MediaQuery.of(context).size.width * 0.055,),
                //               danFavouriteIcon()
                //             ],
                //           ),
                //         ),
                //
                //         ///
                //       ),
                //     );
                //   },
                // )
                // stop


                /// List of items
                favoriteList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}




