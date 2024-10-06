import 'package:flutter/material.dart';
import 'package:resto/utils/app_styles.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Profile",
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
