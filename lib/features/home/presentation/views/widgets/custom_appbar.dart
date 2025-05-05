import 'package:bookly_app/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Appassets.logo), fit: BoxFit.fill),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
