import 'package:flutter/material.dart';
import 'package:resto/utils/app_styles.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Cart",
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
