import 'package:flutter/material.dart';

import '../../../../common/global/color.dart';
import '../../../../common/widget/products/favourite_icon/favourite_icon.dart';
import '../../models/category_model.dart';


class cartScreen extends StatelessWidget {
  const cartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Cart"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [

            ListView.builder(
            itemCount: myProducts.allProduct.length,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                final data = myProducts.allProduct[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: double.infinity,
                            width: MediaQuery.of(context).size.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                data.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("aaaaaaaaaa"),
                              Text("aaaaaaaaaa"),
                            ],
                          ),
                          Row(
                            children: [
                             Text("-"),
                             Text("1"),
                             Text("+"),
                            ],
                          )
                        ],
                      )
                    ),
                  ),
                );
              },
            )

            ],
          ),
        ),
      ),
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
        quantity: 1),
    Product(
        id: 1,
        name: 'Adiddassss',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'ptttike',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'Poloooooo',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'Adiddassss',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'ptttike',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'pumaaaa',
        price: 180,
        image: 'assets/bannner/banner1.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
  ];

  static List<Product> jacketProduct = [
    Product(
        id: 1,
        name: 'jacket',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'jack',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'mew',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'wen',
        price: 180,
        image: 'assets/bannner/banner2.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
  ];

  static List<Product> mottoProduct = [
    Product(
        id: 1,
        name: 'motomoto',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'mazda',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'ferrera',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
    Product(
        id: 1,
        name: 'porche',
        price: 180,
        image: 'assets/bannner/banner3.jpg',
        category: 'Trending',
        description: 'clear lines',
        quantity: 1),
  ];
}