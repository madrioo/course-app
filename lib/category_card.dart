import 'package:flutter/material.dart';
import 'package:mycourse/category_model.dart';
import 'package:mycourse/colors.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      // width: 300,
      padding: const EdgeInsets.symmetric(
        horizontal: 17.0,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(left: 30, bottom: 20, top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: category.category == 'Web Programming'
              ? const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFA0DAFB),
                    Color(0xFF0A8ED9),
                  ],
                )
              : null),
      child: Center(
        child: Text(
          category.category!,
          style: TextStyle(
            color: category.category == 'Web Programming'
                ? Colors.white
                : LocalColors.grey,
          ),
        ),
      ),
    );
  }
}
