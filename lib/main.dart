import 'package:flutter/material.dart';
import 'package:resto/utils/app_router.dart';

void main() {
  runApp(const Resto());
}

class Resto extends StatelessWidget {
  const Resto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
