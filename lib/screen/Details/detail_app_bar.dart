import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
              style: IconButton.styleFrom(
                  backgroundColor: Colors.white, padding: EdgeInsets.all(15)),
              onPressed: () {},
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
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined))
        ],
      ),
    );
  }
}
