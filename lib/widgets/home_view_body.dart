import 'package:flutter/material.dart';
import 'package:resto/widgets/home_view_header.dart';
import 'package:resto/widgets/home_view_search_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
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
          HomeViewSearchSection()
        ],
      ),
    );
  }
}
