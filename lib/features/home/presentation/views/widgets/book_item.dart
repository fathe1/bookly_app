import 'package:bookly_app/features/home/data/books/item.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Item book;

  const BookItem({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
      child: Container(
        width: 150,
        height: 224,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: NetworkImage(
              book.volumeInfo?.imageLinks?.thumbnail ??
                  "https://books.google.com/books/content?id=1g0kEAAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
