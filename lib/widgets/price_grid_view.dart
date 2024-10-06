import 'package:flutter/material.dart';
import 'package:resto/models/price_model.dart';
import 'package:resto/utils/assets.dart';
import 'package:resto/widgets/price_grid_item_widget.dart';

class PriceGridView extends StatelessWidget {
  const PriceGridView({super.key});

  static const List<PriceModel> items = [
    PriceModel(
      product: "Tempe",
      qty: "1 Package 500 Ons",
      price: "20.000",
      image: Assets.assetsImagesSideDishesBig,
    ),
    PriceModel(
      product: "Chicken",
      qty: "1 Kilograms",
      price: "15.000",
      image: Assets.assetsImagesChicke,
    ),
    PriceModel(
      product: "Meat",
      qty: "2 Kilograms",
      price: "60.000",
      image: Assets.assetsImagesMeat,
    ),
    PriceModel(
      product: "Lettuce",
      qty: "500 grams",
      price: "11.000",
      image: Assets.assetsImagesVegtebals,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 154 / 180,
        crossAxisSpacing: 24,
        mainAxisSpacing: 19,
      ),
      itemBuilder: (context, index) => PriceGridItemWidget(
        priceModel: items[index],
      ),
    );
  }
}
