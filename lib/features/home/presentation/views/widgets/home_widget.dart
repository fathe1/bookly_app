import 'package:bookly_app/core/theme/theme.dart';
import 'package:bookly_app/features/home/logic/manager/all_books_cubit/all_books_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_details_list.dart';
import 'book_item_listview.dart';
import 'custom_appbar.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AllBooksCubitCubit>().getAllBooks();
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppbar(),
            const BookItemListview(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Text("Best Sellers", style: styletext.textStyle18),
            ),
            const BookDetailsList(),
          ],
        ),
      ),
    );
  }
}
