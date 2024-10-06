import 'package:flutter/material.dart';
import 'package:resto/models/deal_model.dart';
import 'package:resto/widgets/deal_widget_container.dart';

class DealWidget extends StatelessWidget {
  const DealWidget({super.key, required this.dealModel});

  final DealModel dealModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DealWidgetContainer(
          width: width,
          dealModel: dealModel,
        ),
        Positioned(
          top: -52,
          right: getRightValue(width),
          child: Image.asset(
            dealModel.mainImage,
          ),
        )
      ],
    );
  }

  double getRightValue(double width) {
    if (width < 400) {
      return -(width * 0.13);
    } else {
      return -(width * 0.01);
    }
  }
}
