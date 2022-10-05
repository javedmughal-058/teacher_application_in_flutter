import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controllers/list_controller.dart';
import 'package:new_project/widgets/widgets.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ListController _listController = Get.find();
    final size = MediaQuery.of(context).size;
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: PreferredSize(
          preferredSize: Size(size.width, _listController.appBarHeight.value),
          child: const MyCustomAppBar(),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              Obx(
                () => Container(
                    child: _listController.pages[_listController.index.value]),
              ),
              Positioned(
                //top: 250,
                //top: 10,
                //bottom: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //color: Colors.amber
                  ),
                  //margin: const EdgeInsets.all(10),
                  //padding: const EdgeInsets.all(8),
                  //color: Colors.amber,
                  child: Obx(
                    () => FloatingNavbar(
                      margin: const EdgeInsets.all(12.0),
                      borderRadius: 10,
                      backgroundColor: Colors.grey[200],
                      selectedItemColor: Colors.white,
                      selectedBackgroundColor: Colors.black,
                      unselectedItemColor: Colors.black,
                      onTap: (int val) {
                        _listController.index.value = val;
                      },
                      currentIndex: _listController.index.value,
                      items: [
                        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                        FloatingNavbarItem(
                            icon: Icons.explore, title: 'Schedule'),
                        FloatingNavbarItem(
                            icon: Icons.chat_bubble_outline, title: 'Profile'),
                        FloatingNavbarItem(
                            icon: Icons.settings, title: 'Settings'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//
//
