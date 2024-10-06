import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';
import 'package:resto/utils/assets.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Hello, ",
                    style: AppStyles.styleRegular16.copyWith(
                      color: AppColors.textColor,
                    ),
                  ),
                  Text(
                    "Skander",
                    style: AppStyles.styleBold16.copyWith(
                      color: AppColors.secoundaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Find The Right One For A Healthy Body",
                style: AppStyles.styleBold16.copyWith(
                  color: AppColors.textColor,
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: AppColors.primaryColor,
            ),
          ),
          child: SvgPicture.asset(
            Assets.assetsImagesNotification,
          ),
        )
      ],
    );
  }
}
