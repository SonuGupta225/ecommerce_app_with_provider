import 'package:ecommerce_app_with_provider/model/Category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(categories[index].images),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
                SizedBox(height: 5),
                Text(
                  categories[index].title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemCount: categories.length),
    );
  }
}
