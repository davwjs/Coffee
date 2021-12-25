import 'package:Bean/components/product_card.dart';
import 'package:Bean/models/product.dart';
import 'package:Bean/screens/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class EspressoScreen extends StatelessWidget {
  const EspressoScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.7),
      ),
      itemCount: demoEspressoProducts.length,
      itemBuilder: (context, index) {
        return ProductCard(
          product: demoEspressoProducts[index],
          press: () => Navigator.pushNamed(context, DetailsScreen.routeName,
              arguments: ProductDetailsArguments(
                  product: demoEspressoProducts[index])),
        );
      },
    );
  }
}
