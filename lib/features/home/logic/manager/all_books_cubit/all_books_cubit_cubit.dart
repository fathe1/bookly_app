import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'all_books_cubit_state.dart';

class AllBooksCubitCubit extends Cubit<AllBooksCubitState> {
  // final HomeRepo homeRepo;
  final HomeRepo homeRepo;
  AllBooksCubitCubit(this.homeRepo) : super(AllBooksCubitInitial());
  getAllBooks() async {
    emit(AllBooksCubitLoading());
    var result = await homeRepo.fetchAllBooks();
    result.fold(
      (error) => emit(AllBooksCubitError(error)),
      (books) => emit(AllBooksCubitSuccess(books)),
    );
  }
}
