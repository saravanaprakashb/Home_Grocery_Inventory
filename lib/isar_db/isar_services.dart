import 'package:grocery_app/isar_db/category.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'item.dart';
import 'category.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db =  openDB();
  }

Future<void> saveCategory(Category newCategory) async{
  final isar = await db;
  isar.writeTxnSync<int>(() => isar.categorys.putSync(newCategory));
}

Future<void> saveItem(Item newItem) async{
  final isar = await db;
  isar.writeTxnSync<int>(() => isar.items.putSync(newItem));
}

  //Retrieve all users from the Isar database.
  Future<List<Category>> getAllCategories() async {
    final isar = await db;
    //Find all users in the user collection and return the list.
    return await isar.categorys.where().findAll();
  }

Future<Isar> openDB() async {
  var folderInWhichDbShallBeCreated = await getApplicationDocumentsDirectory();
  if(Isar.instanceNames.isEmpty){
    return await Isar.open(
      [CategorySchema,ItemSchema],
      inspector: true,
      directory: folderInWhichDbShallBeCreated.path
    );
}
  return Future.value(Isar.getInstance());
}
}