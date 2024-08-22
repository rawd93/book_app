part of 'newestbooks_cubit.dart';

@immutable
sealed class NewestbooksState {}

final class NewestbooksInitial extends NewestbooksState {}

final class NewestbooksLoading extends NewestbooksState {}

final class NewestbooksFailure extends NewestbooksState {
  final String errormessage;

  NewestbooksFailure(this.errormessage);
}

final class NewestbooksSucsess extends NewestbooksState {
  final List<BookEntity> books;

  NewestbooksSucsess(this.books);
}
