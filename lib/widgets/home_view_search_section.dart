import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';
import 'package:resto/utils/assets.dart';

class HomeViewSearchSection extends StatelessWidget {
  const HomeViewSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: TextField(
              style: AppStyles.styleRegular14.copyWith(
                color: AppColors.textColor,
                height: 1,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 12,
                ),
                hintText: "Search",
                hintStyle: AppStyles.styleRegular14.copyWith(
                  color: const Color(0xff573B00).withOpacity(.3),
                ),
                filled: true,
                fillColor: const Color(0xffFDFDF9),
                prefixIcon: SvgPicture.asset(
                  Assets.assetsImagesSearch,
                  fit: BoxFit.scaleDown,
                ),
                border: buildBorder(
                  const Color(0xffF0E9D2),
                ),
                enabledBorder: buildBorder(
                  const Color(0xffF0E9D2),
                ),
                focusedBorder: buildBorder(
                  AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        Container(
          width: 40,
          height: 40,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color(0xffF9F3D0),
            borderRadius: BorderRadius.circular(15),
          ),
          child: SvgPicture.asset(
            Assets.assetsImagesFilter,
          ),
        )
      ],
    );
  }

  InputBorder? buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: color),
    );
  }
}
