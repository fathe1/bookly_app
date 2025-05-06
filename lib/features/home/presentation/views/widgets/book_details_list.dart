import 'package:bookly_app/features/home/logic/manager/all_books_cubit/all_books_cubit_cubit.dart';
import 'package:bookly_app/features/home/logic/manager/all_books_cubit/all_books_cubit_state.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsList extends StatelessWidget {
  const BookDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubitCubit, AllBooksCubitState>(
      builder: (context, state) {
        if (state is AllBooksCubitLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is AllBooksCubitSuccess) {
          final books = state.books;
          return ListView.builder(
            shrinkWrap: true, // مهم جدًا
            physics:
                NeverScrollableScrollPhysics(), // كده الـ Scroll هيشتغل من الأب
            itemCount: books.items!.length,
            itemBuilder: (context, index) {
              return BookDetailsItem(
                books: books.items![index],
              );
            },
          );
        } else if (state is AllBooksCubitError) {
          return Center(
              child: Text('حدث خطأ: ${state.error}',
                  style: TextStyle(color: Colors.red)));
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
