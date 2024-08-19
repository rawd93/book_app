
  import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:hive/hive.dart';

void saveData(List<BookEntity> books,String boxName ) {
    var box = Hive.box(boxName );
    box.addAll(books);
  
  }