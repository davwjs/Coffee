import 'package:Bean/models/product.dart';
import 'package:flutter/material.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({
    @required this.product,
    @required this.numOfItems,
  });
}

List<Cart> demoCarts = [
  Cart(product: demoEspressoProducts[0], numOfItems: 2),
  Cart(product: demoTeaProducts[3], numOfItems: 1),
  Cart(product: demoPastriesProducts[1], numOfItems: 1),
  Cart(product: demoEspressoProducts[4], numOfItems: 1),
];
