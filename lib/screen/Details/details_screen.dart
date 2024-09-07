import 'package:ecommerce_app_with_provider/constant.dart';
import 'package:ecommerce_app_with_provider/model/Product.dart';
import 'package:ecommerce_app_with_provider/screen/Details/detail_app_bar.dart';
import 'package:ecommerce_app_with_provider/screen/Details/my_image_slider.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    int currentImage = 0;
    int currentColor = 1;
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! for back button share  and favorite
            DetailAppBar(),

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
            SizedBox(height: 10),

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
          ],
        ),
      )),
    );
  }
}
