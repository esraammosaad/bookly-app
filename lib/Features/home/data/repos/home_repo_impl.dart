import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);

  final ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> getFeaturedBooks() async {
    try {
      Map<String , dynamic> data=await apiService.getData('volumes?Filtering=free-ebooks&q=subject:sport');
      List<BookModel> booksList = [];
      for( dynamic item  in   data['items']){
        booksList.add(BookModel.fromJson(item));

      }

      return right(booksList);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getNewestBooks() async {
    try {
      Map<String , dynamic> data=await apiService.getData('volumes?Filtering=free-ebooks&q=children&Sorting=newest');
      List<BookModel> booksList = [];
      for( dynamic item  in   data['items']){
        booksList.add(BookModel.fromJson(item));

      }
    return right(booksList);
    } on DioException catch (e) {
    return left(ServerFailure.fromDioError(e));
    } catch (e) {
    return left(ServerFailure(errMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> getRelatedBooks({required String bookTitle}) async {
    try {
      Map<String , dynamic> data=await apiService.getData('volumes?Filtering=free-ebooks&Sorting=relevance&q=$bookTitle');
      List<BookModel> booksList = [];
      for( dynamic item  in   data['items']){
        booksList.add(BookModel.fromJson(item));

      }
      return right(booksList);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }

  }
}
