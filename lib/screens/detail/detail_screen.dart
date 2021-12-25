import '../../models/product.dart';
import 'package:Bean/screens/detail/components/body.dart';
import 'package:Bean/screens/detail/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

// we also need to pass our product to our details screen
// and we use name route so we need to create a arguments class

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
