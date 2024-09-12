import 'package:ecommerce_app_with_provider/constant.dart';
import 'package:ecommerce_app_with_provider/model/Product.dart';
import 'package:ecommerce_app_with_provider/screen/Details/widget/add_to_cart.dart';
import 'package:ecommerce_app_with_provider/screen/Details/widget/description.dart';
import 'package:ecommerce_app_with_provider/screen/Details/widget/detail_app_bar.dart';
import 'package:ecommerce_app_with_provider/screen/Details/widget/item_details.dart';
import 'package:ecommerce_app_with_provider/screen/Details/widget/my_image_slider.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentImage = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* for add to cart , icon and quantity
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! for back button share  and favorite
            DetailAppBar(product: widget.product),

            //! For Details Screen
            MyImageSlider(
              // currentSlider: currentImage,
              image: widget.product.image,
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //! for product name , price, rating ,and sller
                  ItemDetails(product: widget.product),
                  SizedBox(height: 20),
                  Text(
                    "Color",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(microseconds: 300),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? Colors.white
                                  : widget.product.colors[index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.product.colors[index])
                                  : null),
                          padding:
                              currentColor == index ? EdgeInsets.all(2) : null,
                          margin: EdgeInsets.only(right: 10),
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: widget.product.colors[index],
                                shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  //! for Description
                  Description(description: widget.product.description)
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
