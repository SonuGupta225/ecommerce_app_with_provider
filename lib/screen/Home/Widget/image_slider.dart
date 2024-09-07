import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlider;
  ImageSlider({required this.onChange, required this.currentSlider});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/slider.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/image1.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/slider3.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/jewelry.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/profile3.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
            top: 190,
            child: Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                      (index) => AnimatedContainer(
                            duration: Duration(microseconds: 300),
                            width: currentSlider == index ? 15 : 8,
                            height: 8,
                            margin: EdgeInsets.only(right: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentSlider == index
                                    ? Colors.black
                                    : Colors.transparent,
                                border: Border.all(color: Colors.black)),
                          ))),
            ))
      ],
    );
  }
}
