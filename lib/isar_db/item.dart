import 'package:isar/isar.dart';

part 'item.g.dart';

@Collection()

class Item {
  Id id = Isar.autoIncrement;
  String name;
  String description;
  double quantity;
  double price;
  String imagePath;
  DateTime expirationdate;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.quantity,
    required this.price,
    required this.imagePath,
    required this.expirationdate
  });
}