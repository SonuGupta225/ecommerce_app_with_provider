import 'package:ecommerce_app_with_provider/model/Product.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../Details/details_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(product: product)));
      },
      child: Stack(children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kcontentColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  product.image,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  product.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "\$${product.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: List.generate(
                      product.colors.length,
                      (index) => Container(
                        width: 18,
                        height: 18,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                          color: product.colors[index],
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        // const SizedBox(height: 20),

        Positioned(
          top: -1,
          right: 2,
          child: Container(
            height: 40,
            width: 40,
            child: Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
        ),
      ]),
    );
  }
}
