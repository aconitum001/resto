import 'package:flutter/material.dart';
import 'package:resto/models/deal_model.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';
import 'package:resto/utils/assets.dart';
import 'package:resto/widgets/deal_widget.dart';

class HomeViewDealSection extends StatelessWidget {
  const HomeViewDealSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Best Deal",
          style: AppStyles.styleBold14.copyWith(
            color: AppColors.textColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        DealWidget(
          dealModel: DealModel(
            tag: "SimpleKitchen",
            title: "Soup Package",
            description:
                "No need to think about ingredients anymore, let's find your menu today",
            backgroundImage: Assets.assetsImagesBanner,
            mainImage: Assets.assetsImagesSoup,
          ),
        ),
      ],
    );
  }
}
