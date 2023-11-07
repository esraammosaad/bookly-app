import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/models/book_model.dart';
import '../../../data/repos/home_repo.dart';
part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  HomeRepo homeRepo;

  getNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await homeRepo.getNewestBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(errMessage: failure.errMessage));
    }, (booksList) {
      emit(NewestBooksSuccess(booksList: booksList));
    });
  }
}
