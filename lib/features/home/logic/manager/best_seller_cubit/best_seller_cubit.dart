import 'package:bookly_app/features/home/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  final HomeRepo homeRepo;
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
}
