import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/views/profile.dart';
import 'package:new_project/views/schedule.dart';
import 'package:new_project/views/home.dart';
import 'package:new_project/views/setting.dart';

class ListController extends GetxController {
  //late ListController _listController = ListController();
  List<String> title = [
    'Assignment',
    'Announcements',
    'Lessons',
    'Topics',
    'Holidays',
    'Exams',
    'Add Results'
  ];

  List<String> durations = [
    '09:00 AM - 10:00 AM',
    '11:00 AM - 12:00 PM',
    '01:00 PM - 02:00 PM',
    '03:00 PM - 04:00 PM',
    '04:00 PM - 05:00 PM',
    '05:00 PM - 06:00 PM',
    '06:00 PM - 07:00 PM',
  ];
  List<String> departments = [
    'Mathematics',
    'Physics',
    'Chemistry',
    'Urdu',
    'Computer',
    'Biology',
    'English',
  ];
  List<String> classList = [
    '8-A',
    '9-A',
    '10-A',
    '8-B',
    '9-B',
    '10-B',
    '8-A',
  ];

  List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final iconTypes = <IconData>[
    Icons.menu_book_outlined,
    Icons.announcement_outlined,
    Icons.zoom_in_outlined,
    Icons.layers_clear,
    Icons.topic,
    Icons.holiday_village,
    Icons.calendar_month,
    Icons.subtitles_outlined,
  ];

  var index = 0.obs;
  var appBarScroll = false.obs;
  var appBarHeight = 100.0.obs;
  var daysListIndex = 0.obs;

  var pages = [
    const Home(),
    const SchedulePage(),
    const ProfilePage(),
    const SettingPage(),
  ].obs;

  //var index = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //_listController = ListController();
  }

  void scrollAppBar() {
    appBarScroll.value = !appBarScroll.value;
    if (appBarScroll.value) {
      print(appBarScroll.value);
      appBarHeight.value = 50.0;
    } else {
      appBarHeight.value = 100.0;
    }
  }
}
