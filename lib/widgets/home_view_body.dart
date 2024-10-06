import 'package:flutter/material.dart';
import 'package:resto/widgets/home_view_category_section.dart';
import 'package:resto/widgets/home_view_deal_section.dart';
import 'package:resto/widgets/home_view_header.dart';
import 'package:resto/widgets/home_view_price_section.dart';
import 'package:resto/widgets/home_view_search_section.dart';
import 'package:resto/widgets/price_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 25,
                ),
                HomeViewHeader(),
                SizedBox(
                  height: 13,
                ),
                HomeViewSearchSection(),
                SizedBox(
                  height: 15,
                ),
                HomeViewCategorySection(),
                SizedBox(
                  height: 15,
                ),
                HomeViewDealSection(),
                SizedBox(
                  height: 15,
                ),
                HomeViewPriceSection(),
              ],
            ),
          ),
          PriceGridView(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
