import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controllers/list_controller.dart';
import 'package:new_project/widgets/widgets.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ListController _list = Get.find();
    final textValue = Get.arguments.toString();
    final value = Get.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(_list.title[value]),
          backgroundColor: const Color(0xff123456),
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: const Icon(Icons.arrow_back_ios)),
          toolbarHeight: 40,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_list.title[value]),
            Text(textValue),
          ],
        ),
      ),
    );
  }
}
