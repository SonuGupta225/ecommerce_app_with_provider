import 'package:ecommerce_app_with_provider/model/Product.dart';
import 'package:ecommerce_app_with_provider/provider/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constant.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  AddToCart({required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Container(
        height: 75,
        // width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.black),
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // width: 120,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        if (currentIndex != 1) {
                          setState(() {
                            currentIndex--;
                          });
                        }
                      },
                      iconSize: 18,
                      icon: Icon(
                        Icons.remove,
                        size: 18,
                        color: Colors.white,
                      )),
                  const SizedBox(width: 5),
                  Text(
                    currentIndex.toString(),
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex++;
                        });
                      },
                      iconSize: 18,
                      icon: Icon(
                        Icons.add,
                        size: 18,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                provider.toogleFavorite(widget.product);
                const snackBar = SnackBar(
                  content: Text(
                    "Successfuly added!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                // width: 140,
                height: 50,

                child: Center(
                    child: Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kprimaryColor,
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
