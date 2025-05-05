import 'package:bookly_app/features/home/data/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<String, List<Books>>> fetchAllBooks();
  Future<Either<String, List<Books>>> fetchBestsellerBooks();
}
