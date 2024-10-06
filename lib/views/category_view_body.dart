import 'package:flutter/material.dart';
import 'package:resto/utils/app_styles.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Category",
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
