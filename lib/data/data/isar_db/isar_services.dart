import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'category.dart';
import 'item.dart';

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