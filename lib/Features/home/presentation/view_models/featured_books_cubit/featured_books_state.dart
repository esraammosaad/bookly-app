part of 'featured_books_cubit.dart';

@immutable
abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksFailure extends FeaturedBooksState {
  FeaturedBooksFailure({required this.errMessage});
  final String errMessage;
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  FeaturedBooksSuccess({required this.booksList});
  final List<BookModel> booksList;
}
