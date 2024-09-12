import 'package:ecommerce_app_with_provider/constant.dart';
import 'package:ecommerce_app_with_provider/provider/cart_provider.dart';
import 'package:ecommerce_app_with_provider/screen/CartScreen/check_out.dart';
import 'package:ecommerce_app_with_provider/screen/nav_bar_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;
    //! For quantity
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQtn(index)
                : provider.decrementQtn(index);
          });
        },
        child: Icon(icon, size: 20),
      );
    }

    return Scaffold(
      //! for Total  and check out
      bottomSheet: CheckOutBox(),
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.all(15),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavBarScreen()));
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                Text(
                  "My Cart",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Container(),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: finalList.length,
            itemBuilder: (context, index) {
              final cartItems = finalList[index];
              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Image.asset(cartItems.image),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cartItems.title,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5),
                              Text(
                                cartItems.category,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade400,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "\$${cartItems.price}",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 35,
                      right: 35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                finalList.removeAt(index);
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 25,
                              )),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.grey.shade200)),
                            child: Row(
                              children: [
                                SizedBox(width: 10),
                                productQuantity(Icons.add, index),
                                SizedBox(width: 10),
                                Text(
                                  cartItems.quantity.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(width: 10),
                                productQuantity(Icons.remove, index),
                                SizedBox(width: 10),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              );
            },
          ))
        ],
      )),
    );
  }
}

//! we used the provider state mangement to show the add to cart item.
//! when user click on add to cart.
//! and same as favorite items.
