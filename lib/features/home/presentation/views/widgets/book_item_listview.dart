import 'package:bookly_app/features/home/logic/manager/all_books_cubit/all_books_cubit_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/all_books_cubit/all_books_cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_item.dart';

class BookItemListview extends StatelessWidget {
  const BookItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubitCubit, AllBooksCubitState>(
      builder: (context, state) {
        if (state is AllBooksCubitLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is AllBooksCubitSuccess) {
          final books = state.books;
          return SizedBox(
            height: 224,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return BookItem(book: book);
              },
            ),
          );
        } else if (state is AllBooksCubitError) {
          return Center(child: Text('حدث خطأ: ${state.error}'));
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
