class CategoryItem {
  final int? id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, required this.name, required this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: "Fruits",
    imagePath: "assets/images/categories_images/fruits.png",
  ),
  CategoryItem(
    name: "Vegetables",
    imagePath: "assets/images/categories_images/vegetables.png",
  ),
  CategoryItem(
    name: "Diaries",
    imagePath: "assets/images/categories_images/diary.png",
  ),
];
