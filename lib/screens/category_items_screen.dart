import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:grocery_app/common_widgets/app_text.dart';
import 'package:grocery_app/models/grocery_item.dart';
import 'package:grocery_app/screens/product_details/product_details_screen.dart';
import 'package:grocery_app/widgets/grocery_item_card_widget.dart';

class CategoryItemsScreen extends StatelessWidget {
  final String category;
  CategoryItemsScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    var items = [];
    switch(category){
      case "Fruits":
          {
            items = fruits;
            break;
          }
      case "Vegetables":
        {
          items = Vegetables;
          break;
        }
      case "Diaries":
        {
          items = Diaries;
          break;
        }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 25),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: AppText(
            text: category,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 2,
          // I only need two card horizontally
          children: items.asMap().entries.map<Widget>((e) {
            GroceryItem groceryItem = e.value;
            return GestureDetector(
              onTap: () {
                onItemClicked(context, groceryItem);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                child: GroceryItemCardWidget(
                  item: groceryItem,
                  heroSuffix: "explore_screen",
                ),
              ),
            );
          }).toList(),
          mainAxisSpacing: 3.0,
          crossAxisSpacing: 0.0, // add some space
        ),
      ),
    );
  }

  void onItemClicked(BuildContext context, GroceryItem groceryItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailsScreen(
          groceryItem,
          heroSuffix: "explore_screen",
        ),
      ),
    );
  }
}