import 'package:flutter/material.dart';
import 'package:resto/models/category_model.dart';
import 'package:resto/utils/assets.dart';
import 'package:resto/widgets/category_grid_widget.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({super.key});

  static const List<CategoryModel> items = [
    CategoryModel(
      catColor: Color(0xffD3E6F7),
      catImage: Assets.assetsImagesVegtebals,
      catTitle: "Vegetables",
    ),
    CategoryModel(
      catColor: Color(0xffEFF7D3),
      catImage: Assets.assetsImagesFruitBig,
      catTitle: "Fruit",
    ),
    CategoryModel(
      catColor: Color(0xffF7D3EA),
      catImage: Assets.assetsImagesSpiceBig,
      catTitle: "Spice",
    ),
    CategoryModel(
      catColor: Color(0xffD3F7DF),
      catImage: Assets.assetsImagesIngridientBig,
      catTitle: "Ingridients",
    ),
    CategoryModel(
      catColor: Color(0xffF7E4D3),
      catImage: Assets.assetsImagesSideDishesBig,
      catTitle: "Side Dishes",
    ),
    CategoryModel(
      catColor: Color(0xffDBD3F7),
      catImage: Assets.assetsImagesMeat,
      catTitle: "Meat",
    ),
    CategoryModel(
      catColor: Color(0xffD3F7DF),
      catImage: Assets.assetsImagesChicke,
      catTitle: "Chicken",
    ),
    CategoryModel(
      catColor: Color(0xffD3E6F7),
      catImage: Assets.assetsImagesVegtebals,
      catTitle: "Vegetables",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.builder(
        itemCount: items.length,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 153 / 164,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => CategoryGridWidget(
          categoryModel: items[index],
        ),
      ),
    );
  }
}
