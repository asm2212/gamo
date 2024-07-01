import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = 0;
  static double screenWidth = 0;

  static double pageViewContainer = 0;
  static double pageViewTextContainer = 0;
  static double height10 = 0;
  static double height15 = 0;
  static double height20 = 0;
  static double height30 = 0;
  static double height45 = 0;

  static double width10 = 0;
  static double width15 = 0;
  static double width20 = 0;
  static double width30 = 0;
  static double width45 = 0;

  static double font20 = 0;

  static double radius15 = 0;
  static double radius20 = 0;
  static double radius30 = 0;

  static double iconSize24 = 0;

  static double listViewImgSize = 0;
  static double listViewTextSize = 0;

  static void init(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    pageViewContainer = screenHeight / 3.84;
    pageViewTextContainer = screenHeight / 7.03;
    height10 = screenHeight / 84.4;
    height15 = screenHeight / 56.27;
    height20 = screenHeight / 42.2;
    height30 = screenHeight / 28.13;
    height45 = screenHeight / 18.76;

    width10 = screenHeight / 84.4;
    width15 = screenHeight / 56.27;
    width20 = screenHeight / 42.2;
    width30 = screenHeight / 28.13;
    width45 = screenHeight / 18.76;
  
    font20 = screenHeight / 42.2;

    radius15 = screenHeight / 56.27;
    radius20 = screenHeight / 42.2;
    radius30 = screenHeight / 28.13;
    
    iconSize24 = screenHeight / 35.17;
     
     listViewImgSize = screenWidth / 3.25;
     listViewTextSize = screenWidth / 3.9;

  }
}
