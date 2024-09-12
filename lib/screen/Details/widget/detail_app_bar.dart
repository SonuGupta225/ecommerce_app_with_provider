import 'package:ecommerce_app_with_provider/model/Product.dart';
import 'package:ecommerce_app_with_provider/provider/favorite.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: EdgeInsets.all(15)),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios)),
          Spacer(),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: EdgeInsets.all(15)),
              onPressed: () {},
              icon: Icon(Icons.share_outlined)),
          SizedBox(width: 10),
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: EdgeInsets.all(15)),
              onPressed: () {
                provider.toggleFavorite(product);
              },
              icon: Icon(
                provider.isExist(product)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.black,
                size: 25,
              ))
        ],
      ),
    );
  }
}
