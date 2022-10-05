import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controllers/list_controller.dart';
import 'package:new_project/views/home_page.dart';
import 'package:new_project/views/nextScreen.dart';

Future<void> main() async {
  final _listController = Get.put(ListController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning App',
      //initialRoute: '/Home',
      getPages: [
        GetPage(
          name: '/',
          page: () => const NextScreen(),
        ),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
