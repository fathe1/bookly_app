import 'package:dartz/dartz.dart';

import '../books/books.dart';

abstract class HomeRepo {
  Future<Either<String, Books>> fetchAllBooks();
  Future<Either<String, Books>> fetchBestsellerBooks();
}
