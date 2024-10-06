import 'package:flutter/material.dart';
import 'package:resto/utils/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex; // The current selected index
  final Function(int) onTap; // The callback function for handling taps

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      elevation: 2,
      onTap: onTap,
      useLegacyColorScheme: false,
      items: [
        BottomNavigationBarItem(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                  scale: animation, child: child); // Scaling animation
            },
            child: currentIndex == 0
                ? Container(
                    key: const ValueKey<int>(
                        0), // Key to identify the widget switch
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7.5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F3D0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.home,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  )
                : const Icon(
                    Icons.home_outlined,
                    key: ValueKey<int>(1),
                    color: AppColors.textColor,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                  scale: animation, child: child); // Scaling animation
            },
            child: currentIndex == 1
                ? Container(
                    key: const ValueKey<int>(
                        2), // Key to identify the widget switch
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7.5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F3D0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.shopping_cart,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  )
                : const Icon(
                    Icons.shopping_cart_outlined,
                    key: ValueKey<int>(3),
                    color: AppColors.textColor,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                  scale: animation, child: child); // Scaling animation
            },
            child: currentIndex == 2
                ? Container(
                    key: const ValueKey<int>(
                        4), // Key to identify the widget switch
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7.5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F3D0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.dashboard,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  )
                : const Icon(
                    Icons.dashboard_outlined,
                    key: ValueKey<int>(5),
                    color: AppColors.textColor,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                  scale: animation, child: child); // Scaling animation
            },
            child: currentIndex == 3
                ? Container(
                    key: const ValueKey<int>(
                        6), // Key to identify the widget switch
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7.5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F3D0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.chat,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  )
                : const Icon(
                    Icons.chat_outlined,
                    key: ValueKey<int>(7),
                    color: AppColors.textColor,
                  ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(
                scale: animation,
                child: child,
              );
            },
            child: currentIndex == 4
                ? Container(
                    key: const ValueKey<int>(
                      8,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 7.5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F3D0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.person,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 4,
                          height: 4,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            shape: BoxShape.circle,
                          ),
                        )
                      ],
                    ),
                  )
                : const Icon(
                    Icons.person_outline,
                    key: ValueKey<int>(9),
                    color: AppColors.textColor,
                  ),
          ),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
