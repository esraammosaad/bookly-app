import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> getNewestBooks();
  Future<Either<Failure, List<BookModel>>> getRelatedBooks({required String bookTitle});
}
