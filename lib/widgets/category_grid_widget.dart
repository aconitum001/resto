import 'package:flutter/material.dart';
import 'package:resto/models/category_model.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({super.key, required this.categoryModel});

  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 11,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: categoryModel.catColor,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              categoryModel.catImage,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.center,
              child: Text(
                categoryModel.catTitle,
                style: AppStyles.styleSemiBold16.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
