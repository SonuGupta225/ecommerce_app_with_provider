class Category {
  final String title;
  final images;

  Category({required this.title, required this.images});
}

final List<Category> categories = [
  Category(title: "All", images: "images/all.png"),
  Category(title: "Shoes", images: "images/shoes.png"),
  Category(title: "Beauty", images: "images/beauty.png"),
  Category(title: "Women's\nFashion", images: "images/image1.png"),
  Category(title: "Jewelry", images: "images/jewelry.png"),
  Category(title: "Men's\nFashion", images: "images/men.png")
];
