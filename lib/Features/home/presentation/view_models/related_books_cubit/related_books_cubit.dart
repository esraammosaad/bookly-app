import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'related_books_state.dart';

class RelatedBooksCubit extends Cubit<RelatedBooksState> {
  RelatedBooksCubit(this.homeRepo) : super(RelatedBooksInitial());
  HomeRepo homeRepo;

  getRelatedBooks({required String bookTitle}) async {
    emit(RelatedBooksLoading());

    var result = await homeRepo.getRelatedBooks(bookTitle: bookTitle);
    result.fold((failure) {
      emit(RelatedBooksFailure(errMessage: failure.errMessage));
    }, (booksList) {
      emit(RelatedBooksSuccess(booksList: booksList));
    });
  }
}
