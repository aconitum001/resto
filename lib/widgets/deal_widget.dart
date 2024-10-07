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
          top: getTopValue(width),
          right: getRightValue(width),
          child: Image.asset(
            dealModel.mainImage,
            // Adjust image width dynamically based on screen width
          ),
        )
      ],
    );
  }

  double getTopValue(double width) {
    if (width <= 400) {
      return -54;
    } else {
      return -50;
    }
  }

  double getRightValue(double width) {
    if (width <= 360) {
      return -68; // Small screens
    } else if (width <= 375) {
      return -55; // Medium screens
    } else if (width <= 390) {
      return -38; // Larger screens
    } else if (width <= 430) {
      return -12;
    } else {
      return -70;
    }
  }
}
