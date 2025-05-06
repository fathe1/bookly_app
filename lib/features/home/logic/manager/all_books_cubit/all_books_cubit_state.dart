import 'package:bookly_app/features/home/data/books/books.dart';

abstract class AllBooksCubitState {}

class AllBooksCubitInitial extends AllBooksCubitState {}

class AllBooksCubitLoading extends AllBooksCubitState {}

class AllBooksCubitSuccess extends AllBooksCubitState {
  final Books books;
  AllBooksCubitSuccess(this.books);
}

class AllBooksCubitError extends AllBooksCubitState {
  final String error;
  AllBooksCubitError(this.error);
}
