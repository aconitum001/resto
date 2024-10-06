import 'package:flutter/material.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';
import 'package:resto/widgets/tapper_widget.dart';

class HomeViewPriceSection extends StatelessWidget {
  const HomeViewPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Best Price",
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
      ],
    );
  }
}
