import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> featchFeaturedBooks();
  List<BookEntity> featchNewestBooks();
}

class HomeLocalSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> featchFeaturedBooks() {
    var box = Hive.box<BookEntity>(KFeaturedBox); //كيشت البيانات على الجهاز
    return box.values.toList(); //رح جيب الكتب
  }

  @override
  List<BookEntity> featchNewestBooks() {
    var box = Hive.box<BookEntity>(KNewestBooks);
    return box.values.toList();
  }
}
