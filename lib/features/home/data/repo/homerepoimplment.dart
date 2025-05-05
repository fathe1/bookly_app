import 'package:bookly_app/core/networking/apiservice.dart';
import 'package:dartz/dartz.dart';

import '../books/books.dart';
import 'home_repo.dart';

class Homerepoimplment implements HomeRepo {
  final ApiService apiService;

  Homerepoimplment({required this.apiService});
  @override
  Future<Either<String, List<Books>>> fetchAllBooks() async {
    try {
      var data = await apiService.get(
          baseUrl: "https://www.googleapis.com/books/v1/volumes?q=20");
      if (data != null) {
        List<Books> books = (data['items'] as List)
            .map((item) => Books.fromJson(item))
            .toList();
        return Right(books);
      } else {
        return Left("No data found");
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, List<Books>>> fetchBestsellerBooks() async {
    try {
      var data = await apiService.get(
          baseUrl: "https://www.googleapis.com/books/v1/volumes?q=20");
      if (data != null) {
        List<Books> books = (data['items'] as List)
            .map((item) => Books.fromJson(item))
            .toList();
        return Right(books);
      } else {
        return Left("No data found");
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
