import 'package:flutter/material.dart';

import '../../../../../common/widget/products/favourite_icon/favourite_icon.dart';
import '../../../../../utilis/theme/custom_theme/text_theme.dart';
import '../../../models/category_model.dart';

class homeVerticalList extends StatelessWidget {
  const homeVerticalList({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final texttheme = danTexttheme.lightTexttheme;

    return ListView.builder(
      itemCount: myProducts.allProduct.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        final data = myProducts.allProduct[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          data.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: danFavouriteIcon(isHome: false,),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 5
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.name, style: texttheme.titleSmall,),
                      Text("\u20A6${data.price}", style: texttheme.titleSmall,),
                    ],
                  ),
                ),
              ],
            ),



            // child: Row(
            //   children: [
            //     Container(
            //       color: Colors.green,
            //       height: 50,
            //       width: 50,
            //     ),
            //     Column(
            //       children: [
            //         Text("moi moi"),
            //         Text("moi moi"),
            //         roundedElevatedButton(text: "text", onPressed: (){}),
            //       ],
            //     ),
            //     danFavouriteIcon(),
            //   ],
            // ),
          ),
        );
      },
    );
  }
}


class myProducts {

  static List<Product> allProduct = [
    Product(
        id: 1,
        name: 'Poloooooo',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'Adiddassss',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'ptttike',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'Poloooooo',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'Adiddassss',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'ptttike',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
  ];


  static List<Product> jacketProduct = [
    Product(
        id: 1,
        name: 'jacket',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'jack',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'mew',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'wen',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
  ];


  static List<Product> mottoProduct = [
    Product(
        id: 1,
        name: 'motomoto',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'mazda',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'ferrera',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
    Product(
        id: 1,
        name: 'porche',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1
    ),
  ];
}