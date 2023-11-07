part of 'related_books_cubit.dart';

@immutable
abstract class RelatedBooksState {}

class RelatedBooksInitial extends RelatedBooksState {}
class RelatedBooksLoading extends RelatedBooksState {}
class RelatedBooksFailure extends RelatedBooksState {
  RelatedBooksFailure({required this.errMessage});
  final String errMessage;
}
class RelatedBooksSuccess extends RelatedBooksState {
  RelatedBooksSuccess({required this.booksList});
  final List<BookModel> booksList;
}
