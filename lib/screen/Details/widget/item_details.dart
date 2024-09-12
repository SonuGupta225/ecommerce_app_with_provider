import 'package:ecommerce_app_with_provider/constant.dart';
import 'package:ecommerce_app_with_provider/model/Product.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  ItemDetails({required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text("\$${product.price}",
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                )),
          ],
        ),
        const SizedBox(height: 10),
        //! for rating
        Row(
          children: [
            Container(
              width: 55,
              height: 25,
              decoration: BoxDecoration(
                color: kprimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 15,
                  ),
                  SizedBox(width: 3),
                  Text(
                    product.rate.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 7),
            Text(
              product.review,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const Spacer(),
            //! row ka kam karta hai
            Text.rich(
              TextSpan(children: [
                const TextSpan(
                  text: "Seller: ",
                  style: TextStyle(fontSize: 16),
                ),
                TextSpan(
                    text: product.seller,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
