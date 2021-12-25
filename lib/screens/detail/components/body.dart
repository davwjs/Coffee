import 'package:Bean/components/default_button.dart';
import 'package:Bean/models/product.dart';
import 'package:Bean/screens/detail/components/product_description.dart';
import 'package:Bean/screens/detail/components/product_images.dart';
import 'package:Bean/screens/detail/components/top_rounded_container.dart';
import 'package:Bean/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            // color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                Column(
                  children: [
                    TopRoundedContainer(
                      // color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          top: getProportionateScreenWidth(15),
                          bottom: getProportionateScreenWidth(40),
                        ),
                        child: DefaultButton(
                          text: "Add to Cart",
                          press: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
