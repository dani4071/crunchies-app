import 'package:flutter/material.dart';

import '../../../features/shop/models/category_model.dart';
import '../products/product_carrd/product_card_vertical.dart';

class danGridLayout extends StatelessWidget {
  const danGridLayout({
    super.key,
    // required this.itemBuilder,
    // required this.itemCount,
    // this.mainAxisExtent = 0.43,
  });


  // final Widget? Function(BuildContext, int) itemBuilder;
  // final int itemCount;
  // final double? mainAxisExtent;

  @override
  Widget build(BuildContext context) {

    // final screenHeight = danHelperFunction.screenHeight();

    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        double desiredWidth = 150; // Desired width of the items
        double aspectRatio; // To be calculated

        // Calculate the item width dynamically
        double itemWidth = width / 2 - 12; // Adjust for spacing

        // Calculate item height dynamically based on the screen size
        // Here, you can use a percentage of the available height or a fixed ratio
        double itemHeight = itemWidth * 1.5; // Example aspect ratio of 1.5

        // Calculate the aspect ratio
        aspectRatio = itemWidth / itemHeight;


      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: aspectRatio,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: myProducts.allProduct.length,
        // itemCount: itemCount,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final foods = myProducts.allProduct[index];
          return productCardVertical(foods: foods);
        },
        // itemBuilder: itemBuilder,
      );
      },
    );
  }
}



// crossAxisCount: (width /aspectRatio).floor(),
// childAspectRatio: (90 / 135),
// childAspectRatio: ((MediaQuery.of(context).size.height / 7) / (MediaQuery.of(context).size.width / 2)),
// childAspectRatio: MediaQuery.of(context).size.width / 550,





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




