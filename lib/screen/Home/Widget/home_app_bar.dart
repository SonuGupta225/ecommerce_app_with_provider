import 'package:ecommerce_app_with_provider/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kcontentColor, padding: EdgeInsets.all(20)),
            onPressed: () {},
            icon: Image.asset(
              "images/icon.png",
              color: Colors.black,
              height: 20,
            )),
        IconButton(
          style: IconButton.styleFrom(
              backgroundColor: kcontentColor, padding: EdgeInsets.all(20)),
          onPressed: () {},
          icon: Icon(
            Icons.notification_add_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }
}
