import 'package:flutter/material.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';

class CategoryTabBaar extends StatelessWidget {
  const CategoryTabBaar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      dividerColor: Colors.transparent,
      overlayColor: WidgetStatePropertyAll(
        AppColors.primaryColor.withOpacity(.2),
      ),
      tabAlignment: TabAlignment.start,
      indicatorColor: AppColors.primaryColor,
      dividerHeight: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      labelPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 0,
      ),
      labelStyle: AppStyles.styleSemiBold12.copyWith(
        color: AppColors.textColor,
      ),
      unselectedLabelColor: const Color(0xffD9D8D3),
      tabs: const [
        Tab(
          child: Text(
            "All Category",
          ),
        ),
        Tab(
          child: Text(
            "Popular",
          ),
        ),
        Tab(
          child: Text(
            "Best Price",
          ),
        ),
        Tab(
          child: Text(
            "Best Deal",
          ),
        ),
        Tab(
          child: Text(
            "Package",
          ),
        ),
        Tab(
          child: Text(
            "New Arrivals", // First new tab
          ),
        ),
        Tab(
          child: Text(
            "Trending", // Second new tab
          ),
        ),
        Tab(
          child: Text(
            "Exclusive", // Third new tab
          ),
        ),
      ],
    );
  }
}
