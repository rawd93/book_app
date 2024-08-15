import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Home/Domain/repos/home_repo.dart';
import 'package:book_app/Features/Home/Domain/use_cases/use%20case.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FeatchNewestUsecase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FeatchNewestUsecase({required this.homeRepo});
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? Param]) {
    return homeRepo.featchNewestBook();
  }
}
