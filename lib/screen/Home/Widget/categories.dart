// import 'package:ecommerce_app_with_provider/model/Category.dart';
// import 'package:flutter/material.dart';

// class Categories extends StatefulWidget {
//   const Categories({super.key});

//   @override
//   State<Categories> createState() => _CategoriesState();
// }

// class _CategoriesState extends State<Categories> {
//   int selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 120,
//       child: ListView.builder(
//         itemCount: categories.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               setState(() {
//                 selectedIndex = index;
//               });
//               // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
//             },
//             child: Container(
//               padding: EdgeInsets.all(5),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: selectedIndex == index
//                       ? const Color.fromARGB(255, 94, 124, 148)
//                       : const Color.fromARGB(0, 0, 0, 0)),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 65,
//                     width: 65,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             image: AssetImage(categories[index].images),
//                             fit: BoxFit.cover),
//                         shape: BoxShape.circle),
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     categories[index].title,
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
