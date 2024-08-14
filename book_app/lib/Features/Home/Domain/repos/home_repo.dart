import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>>
      featchFeatureBook(); //بحدد شو رح يحصل بهوم فيتشر من دون مانفذ شي بداخلا
  Future<Either<Failure, List<BookEntity>>> featchNewestBook();
}
