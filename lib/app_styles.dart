import 'dart:ui';

abstract class AppStyles {
  
}

double getResponsiveFontSize({required double fontsize}) {
  double scaleFactor = getScaleFactor(fontsize);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * 0.5;
  double upperLimit = fontsize * 1.3;

  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(double fontsize) {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  var width = physicalWidth / devicePixelRatio;

  if (width < 600) {
    return width / 380;
  } else {
    return width / 800;
  }
}
