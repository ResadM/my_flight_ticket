import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getscreenWidth() {
    return Get.width;
  }

  static getHeight(double pixles) {
    double x = getScreenHeight() / pixles;
    return getScreenHeight() / x;
  }

  static getWidth(double pixles) {
    double x = getscreenWidth() / pixles;
    return getscreenWidth() / x;
  }
}
