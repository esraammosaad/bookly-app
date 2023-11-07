part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}
class NewestBooksLoading extends NewestBooksState {}
class NewestBooksFailure extends NewestBooksState {
  NewestBooksFailure({required this.errMessage});
  final String errMessage;
}
class NewestBooksSuccess extends NewestBooksState {
  NewestBooksSuccess({required this.booksList});
  final List<BookModel> booksList;
}
