import 'package:flutter/material.dart';
import 'package:get/get.dart';

changeTheme() {
  Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
}
