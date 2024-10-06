import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:resto/utils/app_router.dart';

void main() {
  runApp(DevicePreview(
    enabled: false,
    builder: (context) {
      return const Resto();
    }
  ));
}

class Resto extends StatelessWidget {
  const Resto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
