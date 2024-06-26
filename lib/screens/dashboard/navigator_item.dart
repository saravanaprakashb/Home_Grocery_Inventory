import 'package:flutter/material.dart';
import 'package:grocery_app/screens/Suggestions/purchase_suggestion.dart';
import 'package:grocery_app/screens/categories_screen.dart';
import 'package:grocery_app/screens/home/items_screen.dart';
import 'package:isar/isar.dart';

import '../favourite_screen.dart';

class NavigatorItem {
  final String label;
  final String iconPath;
  final int index;
  final Widget screen;

  NavigatorItem(this.label, this.iconPath, this.index, this.screen);
}

List<NavigatorItem> navigatorItems = [
  NavigatorItem("Categories", "assets/icons/explore_icon.svg", 1, CategoriesScreen()),
  NavigatorItem("Items", "assets/icons/shop_icon.svg", 0, ItemsScreen()),
   NavigatorItem("Suggestions", "assets/icons/account_icons/notification_icon.svg", 5, Suggestions()),
];
