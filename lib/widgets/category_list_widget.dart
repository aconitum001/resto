import 'package:flutter/material.dart';
import 'package:resto/models/category_model.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: categoryModel.catColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(categoryModel.catImage),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            categoryModel.catTitle,
            style: AppStyles.styleRegular8.copyWith(
              color: AppColors.textColor,
            ),
          ),
        )
      ],
    );
  }
}
