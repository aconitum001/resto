import 'package:flutter/material.dart';
import 'package:resto/models/category_model.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';
import 'package:resto/utils/assets.dart';
import 'package:resto/widgets/category_list_widget.dart';
import 'package:resto/widgets/tapper_widget.dart';

class HomeViewCategorySection extends StatelessWidget {
  const HomeViewCategorySection({super.key});

  static const List<CategoryModel> items = [
    CategoryModel(
      catColor: Color(0xffD3E6F7),
      catImage: Assets.assetsImagesCucamber,
      catTitle: "Vegetables",
    ),
    CategoryModel(
      catColor: Color(0xffEFF7D3),
      catImage: Assets.assetsImagesFruit,
      catTitle: "Fruit",
    ),
    CategoryModel(
      catColor: Color(0xffF7D3EA),
      catImage: Assets.assetsImagesSpice,
      catTitle: "Spice",
    ),
    CategoryModel(
      catColor: Color(0xffD3F7DF),
      catImage: Assets.assetsImagesIngridien,
      catTitle: "Ingridients",
    ),
    CategoryModel(
      catColor: Color(0xffF7E4D3),
      catImage: Assets.assetsImagesSideDishes,
      catTitle: "Side Dishes",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Category",
              style: AppStyles.styleBold14.copyWith(
                color: AppColors.textColor,
              ),
            ),
            Tapper(
              onTap: () {},
              padding: 4,
              borderRadius: BorderRadius.circular(10),
              rippleColor: AppColors.secoundaryColor.withOpacity(.2),
              child: Text(
                "Show All",
                style: AppStyles.styleRegular10.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: CategoryListWidget(
                categoryModel: items[0],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: CategoryListWidget(
                categoryModel: items[1],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: CategoryListWidget(
                categoryModel: items[2],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: CategoryListWidget(
                categoryModel: items[3],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: CategoryListWidget(
                categoryModel: items[4],
              ),
            ),
          ],
        )
      ],
    );
  }
}
