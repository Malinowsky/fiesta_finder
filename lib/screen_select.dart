import 'package:get/get.dart';
class ScreenSelect {
  static double get screenHeight => Get.height ?? 0;
  static double get screenWidth => Get.width ?? 0;

  static double get pageViewContainer => screenHeight / 3.45;
  static double get pageViewTextContainer => screenHeight / 6.3;
  static double get pageView => screenHeight / 2.37;
  static double get height10 => screenHeight / 84.4;
  static double get height15 => screenHeight / 56.27;
  static double get height20 => screenHeight / 42.2;
  static double get height30 => screenHeight / 28.13;
  static double get height45 => screenHeight / 18.76;
  static double get height60 => screenHeight / 12.76;
  static double get height250 => screenHeight / 3.26;
  static double get width10 => screenWidth / 84.4;
  static double get width15 => screenWidth / 54.27;
  static double get width20 => screenWidth / 39.2;
  static double get width30 => screenWidth / 25.13;
  static double get width60 => screenWidth / 12.5;
  static double get font16 => screenHeight / 52.75;
  static double get font20 => screenHeight / 37.95;
  static double get font26 => screenHeight / 32.46;
  static double get radius5 => screenHeight / 151.8;
  static double get radius15 => screenHeight / 56.27;
  static double get radius20 => screenHeight / 42.2;
  static double get radius30 => screenHeight / 28.13;
  static double get iconSize24 => screenHeight / 35.17;
  static double get iconSize16 => screenHeight / 52.75;
  static double get listViewImgSize => screenWidth / 3.25;
  static double get listViewTextContSize => screenWidth / 3.9;
  static double get popularFoodImgSize => screenHeight / 2.41;
  static double get bottomHeightBar => screenHeight / 7.03;
  static double get splashImg => screenHeight / 3.0;
}