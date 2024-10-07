import 'package:flutter/material.dart';
import 'package:resto/widgets/category_grid_view.dart';
import 'package:resto/widgets/category_tab_bar.dart';
import 'package:resto/widgets/home_view_search_section.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: HomeViewSearchSection(),
          ),
          const SizedBox(
            height: 20,
          ),
          const CategoryTabBaar(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: TabBarView(
              children: List.generate(
                8,
                (index) => const CategoryGridView(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
