import 'dart:developer';

import 'package:bookly_app/core/networking/apiservice.dart';
import 'package:dartz/dartz.dart';

import '../books/books.dart';
import 'home_repo.dart';

class Homerepoimplment implements HomeRepo {
  final ApiService apiService;

  Homerepoimplment({required this.apiService});
  @override
  Future<Either<String, Books>> fetchAllBooks() async {
    try {
      final data = await apiService.get(
          baseUrl: "https://www.googleapis.com/books/v1/volumes?q=20");
      if (data != null) {
        // log("ListData: ${data.toString()}");
        Books books = Books.fromJson(data);

        log("ListBook: ${books.toString()}");
        return Right(books);
      } else {
        return Left("No data found");
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, Books>> fetchBestsellerBooks() async {
    try {
      final data = await apiService.get(
          baseUrl: "https://www.googleapis.com/books/v1/volumes?q=20");
      if (data != null) {
        Books books = Books.fromJson(data);
        return Right(books);
      } else {
        return Left("No data found");
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
