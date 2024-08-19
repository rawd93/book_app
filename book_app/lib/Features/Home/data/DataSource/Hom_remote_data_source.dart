import 'package:book_app/Constatnt.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Home/data/model/book_model/book_model.dart';
import 'package:book_app/core/Utiles/Api_Servicies.dart';
import 'package:book_app/core/Utiles/function/save_data_Local.dart';
import 'package:hive/hive.dart';

abstract class HomRemoteDataSource {
  Future<List<BookEntity>> featchFeaturedBooks();
  Future<List<BookEntity>> featchNewestBooks(); //موضرورية
}

class HomeRemoteDataSourceImpl extends HomRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<BookEntity>> featchFeaturedBooks() async {
    var data = await apiService.get(
        endPoints: 'volumes?Filtering=free-ebooks&q=programming');
    List<BookEntity> books = getBookList(data);
    saveData(books, KFeaturedBox); // كيشت داتا اوخزنتا
    return books;
  }

  @override
  Future<List<BookEntity>> featchNewestBooks() async {
    var data = await apiService.get(
        endPoints:
            'volumes?Filtering=free-ebooks&q=programming&Sorting=newest');
    List<BookEntity> books = getBookList(data);
    saveData(books, KNewestBooks);
    return books;
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
