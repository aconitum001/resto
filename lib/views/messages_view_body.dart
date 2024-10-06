

import 'package:flutter/material.dart';
import 'package:resto/utils/app_styles.dart';

class MessagesViewBody extends StatelessWidget {
  const MessagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Messages",
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
