part of 'featuredbooks_cubit.dart';

@immutable
sealed class FeaturedbooksState {}

final class FeaturedbooksInitial extends FeaturedbooksState {}

final class FeaturedbooksLoading extends FeaturedbooksState {}

final class FeaturedbooksFailure extends FeaturedbooksState {
  final String errorMessage;

  FeaturedbooksFailure(this.errorMessage);
}

final class FeaturedbooksSucsess extends FeaturedbooksState {
  final List<BookEntity> books;

  FeaturedbooksSucsess(this.books);
}
