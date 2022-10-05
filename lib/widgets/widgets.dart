import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controllers/list_controller.dart';
import 'package:new_project/theme/theme.dart';

final ListController _listController = Get.find();

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Learning App'),
      //leadingWidth: _listController.appBarScroll.value ? 60.0 : 80.0,
      leading: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: CircleAvatar(
          // radius: 120,
          backgroundImage: AssetImage(
            'images/person-male.png',
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              _listController.scrollAppBar();
            },
            icon: Icon(Icons.change_circle))
      ],
      // title: _title,
      toolbarHeight: 120.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      backgroundColor: const Color(0xff123456),
    );
  }
}
