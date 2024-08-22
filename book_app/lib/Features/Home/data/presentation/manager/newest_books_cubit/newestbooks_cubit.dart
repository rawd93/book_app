import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Home/Domain/use_cases/featch_newest_usecase.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:meta/meta.dart';

part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.featchNewestUsecase) : super(NewestbooksInitial());
  final FeatchNewestUsecase featchNewestUsecase;

  Future<void> featchNewestBooks() async {
    emit(NewestbooksLoading());

    var result = await featchNewestUsecase.call();
    result.fold((Failure) {
      emit(NewestbooksFailure(Failure.message));
    }, (books) {
      emit(NewestbooksSucsess(books));
    });
  }
}
