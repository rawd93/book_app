import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Home/Domain/repos/home_repo.dart';
import 'package:book_app/Features/Home/data/DataSource/Hom_remote_data_source.dart';
import 'package:book_app/Features/Home/data/DataSource/Home_Local_data_source.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomRemoteDataSource homRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl(
      {required this.homRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> featchFeatureBook() async {
    try {
      var booksList = homeLocalDataSource.featchFeaturedBooks();
      if (booksList.isNotEmpty) {
        //بيانات جاي قبل بمرة ومخزنة
        return right(booksList);
      }
      var books = await homRemoteDataSource.featchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return  left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> featchNewestBook() async {
    try {
      var booksList = homeLocalDataSource.featchNewestBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homRemoteDataSource.featchNewestBooks();
      return right(books);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
