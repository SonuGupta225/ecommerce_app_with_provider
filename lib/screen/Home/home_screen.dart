import 'package:ecommerce_app_with_provider/model/Category.dart';
import 'package:ecommerce_app_with_provider/screen/Home/Widget/categories.dart';
import 'package:ecommerce_app_with_provider/screen/Home/Widget/home_app_bar.dart';
import 'package:ecommerce_app_with_provider/screen/Home/Widget/image_slider.dart';
import 'package:ecommerce_app_with_provider/screen/Home/Widget/product_cart.dart';
import 'package:flutter/material.dart';

import '../../model/Product.dart';
import 'Widget/search_bar.dart';
import 'Widget/shopping_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectcategories = [
      products,
      shoes,
      beauty,
      womenFashion,
      jewelry,
      menFashion
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22),
              //! for custom appBar
              CustomAppBar(),
              SizedBox(height: 22),
              //! for search bar
              MySearchBar(),
              SizedBox(height: 22),
              ImageSlider(
                currentSlider: currentSlider,
                onChange: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
              ),
              const SizedBox(height: 22),

              //! for category selection
              // Categories(),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: selectedIndex == index
                                ? const Color.fromARGB(255, 94, 124, 148)
                                : const Color.fromARGB(0, 0, 0, 0)),
                        child: Column(
                          children: [
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(categories[index].images),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle),
                            ),
                            SizedBox(height: 5),
                            Text(
                              categories[index].title,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Special For You',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54),
                  ),
                ],
              ),

              //! for shopping items
              SizedBox(height: 10),
              // ShoppingItem(),

              GridView.builder(
                itemCount: selectcategories[selectedIndex].length,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15),
                itemBuilder: (context, index) {
                  return ProductCard(
                      product: selectcategories[selectedIndex][index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
