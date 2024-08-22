import 'package:bloc/bloc.dart';
import 'package:book_app/Features/Home/Domain/Entities/book_Entity.dart';
import 'package:book_app/Features/Home/Domain/use_cases/featch_featured_use_cases.dart';
import 'package:meta/meta.dart';

part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.featchFeaturedBooksUseCase)
      : super(FeaturedbooksInitial());
  final FeatchFeaturedBooksUseCase featchFeaturedBooksUseCase;

  Future<void> FeatchFeatuedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await featchFeaturedBooksUseCase.call(); //كود بفتش البيانات

    result.fold((L) {
      emit(FeaturedbooksFailure(L.message));
    }, (r) {
      emit(FeaturedbooksSucsess(r));
    });
  }
}
//فيني حط بدل L (failure) 
//فيني حط بدل  r (books)
//result بتاخد نوعين اما (failur) او(books)