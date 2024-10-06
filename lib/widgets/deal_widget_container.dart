import 'package:flutter/material.dart';
import 'package:resto/models/deal_model.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';

class DealWidgetContainer extends StatelessWidget {
  const DealWidgetContainer({
    super.key,
    required this.width,
    required this.dealModel,
  });

  final double width;
  final DealModel dealModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 327 / 150,
      child: Container(
        padding: const EdgeInsets.only(
          left: 15,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColors.secoundaryColor,
          ),
          image: DecorationImage(
            image: AssetImage(dealModel.backgroundImage),
            alignment: Alignment.centerRight,
            fit: BoxFit.fitHeight,
          ),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffFF8730),
              Color(0xffFFBC6B),
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "#${dealModel.tag}",
                      style: AppStyles.styleRegular10.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 3,
                    child: SizedBox(),
                  ),
                  Text(
                    dealModel.title,
                    style: AppStyles.styleBold24.copyWith(
                      color: Colors.white,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    dealModel.description,
                    style: AppStyles.styleRegular6.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
