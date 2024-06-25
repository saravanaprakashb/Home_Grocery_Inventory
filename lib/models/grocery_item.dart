class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var fruits = [
  GroceryItem(
      id: 1,
      name: "Apple",
      description: "7pcs",
      price: 4.99,
      imagePath: "assets/images/grocery_images/apple.png"),
  GroceryItem(
      id: 2,
      name: "Pineapple",
      description: "1kg",
      price: 6.99,
      imagePath: "assets/images/grocery_images/pineapple.png"),
  GroceryItem(
      id: 3,
      name: "Grapes",
      description: "1kg",
      price: 7.99,
      imagePath: "assets/images/grocery_images/grapes.png"),
  GroceryItem(
      id: 3,
      name: "Banana",
      description: "1kg",
      price: 7.99,
      imagePath: "assets/images/grocery_images/banana.png"),
];

var Vegetables = [
  GroceryItem(
      id: 1,
      name: "Carrot",
      description: "7pcs",
      price: 12.00,
      imagePath: "assets/images/grocery_images/carrot.png"),
  GroceryItem(
      id: 2,
      name: "Beetroot",
      description: "1kg",
      price: 50.00,
      imagePath: "assets/images/grocery_images/beetroot.png"),
  GroceryItem(
      id: 3,
      name: "Cabbage",
      description: "1kg",
      price: 45.99,
      imagePath: "assets/images/grocery_images/cabbage.png"),
];

var Diaries = [
  GroceryItem(
      id: 1,
      name: "Milk",
      description: "1 litre",
      price: 27.99,
      imagePath: "assets/images/grocery_images/milk.png"),
  GroceryItem(
      id: 2,
      name: "Cheese",
      description: "1.5kg",
      price: 277.99,
      imagePath: "assets/images/grocery_images/cheese.png"),
  GroceryItem(
      id: 3,
      name: "Honey",
      description: "1kg",
      price: 99.99,
      imagePath: "assets/images/grocery_images/honey.png"),
];


// var exclusiveOffers = [demoItems[0], demoItems[1]];
//
// var bestSelling = [demoItems[2], demoItems[3]];
//

var fruitsList = fruits.map((name) => name).toList();
var diariesList = Diaries.map((name) => name).toList();
var vegetableList = Vegetables.map((name) => name).toList();

//
var orderAgain = [Vegetables[0], Diaries[2], fruits[0]];
var recommendations = [Diaries[1], Vegetables[2], fruits[1]];
