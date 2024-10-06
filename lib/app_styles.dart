import 'dart:ui';

abstract class AppStyles {
  static TextStyle styleRegular8 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 8),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleRegular6 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 6),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
  );
  static TextStyle styleSemiBold12 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleSemiBold14 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle styleBold14 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
  );
  static TextStyle styleRegular10 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 10),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
  );
  static TextStyle styleRegular14 = TextStyle(
    fontSize: getResponsiveFontSize(fontsize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
  );
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
