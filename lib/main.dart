import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/features/home/data/repo/homerepoimplment.dart';
import 'package:bookly_app/features/home/logic/manager/all_books_cubit/all_books_cubit_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/service_locator.dart';
import 'core/routes/app_router.dart';
import 'features/home/presentation/views/Home_screen.dart';
import 'features/splach/presentation/view/splach_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const Boock());
}

class Boock extends StatelessWidget {
  const Boock({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AllBooksCubitCubit(getIt.get<Homerepoimplment>()),
          ),
          BlocProvider(
              create: (context) =>
                  BestSellerCubit(getIt.get<Homerepoimplment>())),
        ],
        child: MaterialApp(
          routes: {
            AppRouter.home: (context) => HomeScreen(),
          },
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: Appcolor.PrimaryColor,
          ),
          home: SplachScreen(),
        ));
  }
}
