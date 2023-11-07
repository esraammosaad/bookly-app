import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';
import '../../../data/models/book_model.dart';
part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  HomeRepo homeRepo;

  getFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.getFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(errMessage: failure.errMessage));
    }, (booksList) {
      emit(FeaturedBooksSuccess(booksList: booksList));
    });
  }
}
