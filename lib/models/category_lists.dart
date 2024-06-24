import 'package:isar/isar.dart';
@collection
class CategoryList {
  CategoryList(this.name, this.imagePath);
  Id id = Isar.autoIncrement;
  String? name;
  String? imagePath;
}