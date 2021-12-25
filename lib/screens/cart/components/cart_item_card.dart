import 'package:Bean/constants.dart';
import 'package:Bean/models/cart.dart';
import 'package:Bean/size_config.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final Cart cart;

  const CartItemCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                cart.product.images[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(width: getProportionateScreenWidth(20)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(fontSize: 16, color: Colors.white),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                    text: " x${cart.numOfItems}",
                    style: TextStyle(color: kTextColor),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
