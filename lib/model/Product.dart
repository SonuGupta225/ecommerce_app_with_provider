import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final String description;
  final String review;
  final String seller;
  final double price;
  final String category;
  final double rate;
  int quantity;
  final List<Color> colors;
  Product({
    required this.image,
    required this.title,
    required this.description,
    required this.review,
    required this.seller,
    required this.price,
    required this.category,
    required this.rate,
    required this.quantity,
    required this.colors,
  });
}

List<Product> products = [
  Product(
    title: "Mens Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/jacket.png",
    price: 120,
    seller: "Tariqul isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),

//!

  Product(
    title: "Woman Sweter",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/sweet.png",
    price: 120,
    seller: "Joy Store",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Woman Fashion",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/miband.jpg",
    price: 55,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Wireless Headphone",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/Wireless.png",
    price: 155,
    seller: "Jacket Store",
    colors: [
      Colors.blueAccent,
      Colors.orange,
      Colors.green,
    ],
    category: "Men Fashion",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/shoes/AirJordan.png",
    price: 255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Super Perfume",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/beauty/perfume.png",
    price: 155,
    seller: "Love Seller",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.green,
    ],
    category: "Beauty",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/jewelry/weddingRing.png",
    price: 155,
    seller: "I Am Seller",
    colors: [
      Colors.brown,
      Colors.purpleAccent,
      Colors.blueGrey,
    ],
    category: "Jewelry",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Mens Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/jacket.png",
    price: 120,
    seller: "Tariqul isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),

//!

  Product(
    title: "Woman Sweter",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/sweet.png",
    price: 120,
    seller: "Joy Store",
    colors: [
      Colors.brown,
      Colors.deepPurple,
      Colors.pink,
    ],
    category: "Woman Fashion",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all/miband.jpg",
    price: 55,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
];

//! Beauty List Item

// final List<Product> beauty = [
//   Product(
//       title: "Face Care Product",
//       description:
//           "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//       image: "images/beauty/faceCare.png",
//       review: "(200 Reviews)",
//       seller: "Yojana Seller",
//       price: 1500,
//       category: "Beauty",
//       rate: 4.0,
//       quantity: 1,
//       colors: [
//         Colors.pink,
//         Colors.amber,
//         Colors.deepOrangeAccent,
//       ]),
//   Product(
//     title: "Super Perfume",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/beauty/perfume.png",
//     price: 155,
//     seller: "Love Seller",
//     colors: [
//       Colors.purpleAccent,
//       Colors.pinkAccent,
//       Colors.green,
//     ],
//     category: "Beauty",
//     review: "(99 Reviews)",
//     rate: 4.7,
//     quantity: 1,
//   ),
//   Product(
//     title: "Skin-Care Product",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/beauty/faceCare.png",
//     price: 999,
//     seller: "Mr Beast",
//     colors: [
//       Colors.black12,
//       Colors.orange,
//       Colors.white38,
//     ],
//     category: "Beauty",
//     review: "(20 Reviews)",
//     rate: 4.2,
//     quantity: 1,
//   ),
// ];

// //! womenFashion

// final List<Product> womenFashion = [
//   Product(
//     title: " Women Kurta",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/womenFashion/kurta.png",
//     price: 299,
//     seller: "Sila Store",
//     colors: [
//       Colors.grey,
//       Colors.black54,
//       Colors.purple,
//     ],
//     category: "WomenFashion",
//     review: "(25 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "Mens Jacket",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/womenFashion/lehenga.png",
//     price: 666,
//     seller: "My Store",
//     colors: [
//       Colors.black,
//       Colors.orange,
//       Colors.green,
//     ],
//     category: "WomenFashion",
//     review: "(100 Reviews)",
//     rate: 4.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "T-Shert",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/womenFashion/t-shert.png",
//     price: 155,
//     seller: "Love Store",
//     colors: [
//       Colors.blueAccent,
//       Colors.redAccent,
//       Colors.deepOrangeAccent,
//     ],
//     category: "Electronics",
//     review: "(20 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "  Pants",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/womenFashion/pants.png",
//     price: 155,
//     seller: "PK Store",
//     colors: [
//       Colors.lightGreen,
//       Colors.blueGrey,
//       Colors.deepPurple,
//     ],
//     category: "WomenFashion",
//     review: "(55 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
// ];

// //! Jewelry Data list
// final List<Product> jewelry = [
//   Product(
//     title: "Earrings",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/jewelry/earrings.png",
//     price: 3000,
//     seller: "Gold Store",
//     colors: [
//       Colors.amber,
//       Colors.deepPurple,
//       Colors.pink,
//     ],
//     category: "Jewelry",
//     review: "(320 Reviews)",
//     rate: 4.5,
//     quantity: 1,
//   ),
//   Product(
//     title: "Jewelry-Box",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/jewelry/jewelryBox.png",
//     price: 300,
//     seller: "Love Love",
//     colors: [
//       Colors.pink,
//       Colors.orange,
//       Colors.redAccent,
//     ],
//     category: "Jewelry",
//     review: "(100 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "Wedding Ring",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/jewelry/weddingRing.png",
//     price: 155,
//     seller: "I Am Seller",
//     colors: [
//       Colors.brown,
//       Colors.purpleAccent,
//       Colors.blueGrey,
//     ],
//     category: "Jewelry",
//     review: "(80 Reviews)",
//     rate: 4.5,
//     quantity: 1,
//   ),
//   Product(
//     title: "Necklace-Jewellery",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/jewelry/necklaceJewellery.png",
//     price: 5000,
//     seller: "Jewellery Store",
//     colors: [
//       Colors.blueAccent,
//       Colors.orange,
//       Colors.green,
//     ],
//     category: "Jewellery",
//     review: "(22 Reviews)",
//     rate: 3.5,
//     quantity: 1,
//   ),
// ];

// //! Shoe Data List
// final List<Product> shoes = [
//   Product(
//     title: "Air Jordan",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/shoes/AirJordan.png",
//     price: 255,
//     seller: "The Seller",
//     colors: [
//       Colors.grey,
//       Colors.amber,
//       Colors.purple,
//     ],
//     category: "Shoes",
//     review: "(55 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "Vans Old Skool",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/shoes/vansold.png",
//     price: 300,
//     seller: "Mrs Store",
//     colors: [
//       Colors.blueAccent,
//       Colors.blueGrey,
//       Colors.green,
//     ],
//     category: "Shoes",
//     review: "(200 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "Women-Shoes",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/shoes/womenShoes.png",
//     price: 500,
//     seller: "Shoes Store",
//     colors: [
//       Colors.red,
//       Colors.orange,
//       Colors.greenAccent,
//     ],
//     category: "Shoes",
//     review: "(100 Reviews)",
//     rate: 4.8,
//     quantity: 1,
//   ),
//   Product(
//     title: "Sports Shoes",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/shoes/SportsShoes.png",
//     price: 155,
//     seller: "Hari Store",
//     colors: [
//       Colors.deepPurpleAccent,
//       Colors.orange,
//       Colors.green,
//     ],
//     category: "Shoes",
//     review: "(60 Reviews)",
//     rate: 3.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "White Sneaker",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/shoes/whiteSneaker.png",
//     price: 1000,
//     seller: "Jacket Store",
//     colors: [
//       Colors.blueAccent,
//       Colors.orange,
//       Colors.green,
//     ],
//     category: "Shoes",
//     review: "(00 Reviews)",
//     rate: 0.0,
//     quantity: 1,
//   ),
// ];

// //! MenFashion Data list

// final List<Product> menFashion = [
//   Product(
//     title: "Man Jacket",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/menfashion/manJacket.png",
//     price: 500,
//     seller: "Men Store",
//     colors: [
//       Colors.brown,
//       Colors.orange,
//       Colors.blueGrey,
//     ],
//     category: "MenFashion",
//     review: "(90 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "Men Pants",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/menfashion/pants.png",
//     price: 400,
//     seller: "My Store",
//     colors: [
//       Colors.black54,
//       Colors.orange,
//       Colors.green,
//     ],
//     category: "MenFashion",
//     review: "(500 Reviews)",
//     rate: 4.5,
//     quantity: 1,
//   ),
//   Product(
//     title: "Men Shert",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/menfashion/shert.png",
//     price: 300,
//     seller: "Roman Store",
//     colors: [
//       Colors.pink,
//       Colors.amber,
//       Colors.green,
//     ],
//     category: "menFashion",
//     review: "(200 Reviews)",
//     rate: 3.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "T-Shirt",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/menfashion/t-shirt.png",
//     price: 200,
//     seller: "Hot Store",
//     colors: [
//       Colors.brown,
//       Colors.orange,
//       Colors.blue,
//     ],
//     category: "MenFashion",
//     review: "(1k Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
//   Product(
//     title: "Watch",
//     description:
//         "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
//     image: "images/menfashion/watch.png",
//     price: 1000,
//     seller: "Jacket Store",
//     colors: [
//       Colors.lightBlue,
//       Colors.orange,
//       Colors.purple,
//     ],
//     category: "MenFashion",
//     review: "(100 Reviews)",
//     rate: 5.0,
//     quantity: 1,
//   ),
// ];
