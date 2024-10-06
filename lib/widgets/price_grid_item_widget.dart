import 'package:flutter/material.dart';
import 'package:resto/models/price_model.dart';
import 'package:resto/utils/app_colors.dart';
import 'package:resto/utils/app_styles.dart';

class PriceGridItemWidget extends StatelessWidget {
  const PriceGridItemWidget({
    super.key,
    required this.priceModel,
  });

  final PriceModel priceModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffF0E9D2),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffF2F2F2),
                    Color(0xffFFFFFF),
                    Color(0xffF2F2F2),
                  ],
                ),
              ),
              child: Image.asset(
                priceModel.image,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          priceModel.product,
                          style: AppStyles.styleSemiBold14.copyWith(
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          priceModel.qty,
                          style: AppStyles.styleRegular6.copyWith(
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.bottomRight,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Rp.",
                          style: AppStyles.styleRegular8.copyWith(
                            color: AppColors.textColor,
                          ),
                        ),
                        Text(
                          priceModel.price,
                          style: AppStyles.styleSemiBold14.copyWith(
                            color: AppColors.textColor,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
