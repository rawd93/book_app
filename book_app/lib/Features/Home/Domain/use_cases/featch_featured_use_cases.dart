// ignore_for_file: avoid_renaming_method_parameters

import 'dart:core';
import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Home/Domain/repos/home_repo.dart';
import 'package:book_app/Features/Home/Domain/use_cases/use%20case.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

class FeatchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FeatchFeaturedBooksUseCase( this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) {
    return homeRepo.featchFeatureBook();
  }
}
