import 'package:bookly_app/core/networking/apiservice.dart';
import 'package:bookly_app/features/home/data/repo/homerepoimplment.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setUp() {
  // ignore: avoid_print
  print("Setting up dependencies...");
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<Homerepoimplment>(
    Homerepoimplment(apiService: getIt.get<ApiService>()),
  );
}
