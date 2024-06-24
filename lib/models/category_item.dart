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
    name: "Canned Foods",
    imagePath: "assets/images/categories_images/cannedfoods.png",
  ),
  CategoryItem(
    name: "Diaries",
    imagePath: "assets/images/categories_images/diary.png",
  ),
  CategoryItem(
    name: "Meat",
    imagePath: "assets/images/categories_images/meat.png",
  ),
  CategoryItem(
    name: "Seafoods",
    imagePath: "assets/images/categories_images/seafood.png",
  ),
  CategoryItem(
    name: "Deli",
    imagePath: "assets/images/categories_images/deli.png",
  ),
  CategoryItem(
    name: "Spices",
    imagePath: "assets/images/categories_images/spices.png",
  ),
  CategoryItem(
    name: "Snacks",
    imagePath: "assets/images/categories_images/snacks.png",
  ),
  CategoryItem(
    name: "Bread & Backery",
    imagePath: "assets/images/categories_images/breadbackery.png",
  ),
  CategoryItem(
    name: "Beverages",
    imagePath: "assets/images/categories_images/beverages.png",
  ),
  CategoryItem(
    name: "Pasta, Rice & Cereal",
    imagePath: "assets/images/categories_images/rice.png",
  ),
];
