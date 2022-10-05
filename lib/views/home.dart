import 'package:flutter/material.dart';
import 'package:new_project/controllers/list_controller.dart';
import 'package:new_project/views/assignment.dart';
import 'package:new_project/views/nextScreen.dart';
import 'package:new_project/widgets/textStyles.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ListController _listController = Get.find();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'My Classes',
                style: textStyleHead(),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: 80,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff123456),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.home_work_sharp,
                              size: 26,
                              color: Colors.white,
                            ),
                            Text(
                              'Class - 8',
                              style: textStyle(),
                            )
                          ],
                        )),
                    Positioned(
                        bottom: -12,
                        child: Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {
                                Get.to(const NextScreen());
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              )),
                        )),
                  ],
                ),
                SizedBox(width: size.width * 0.2),
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        height: 80,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red[400],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.home_work_sharp,
                              size: 26,
                              color: Colors.white,
                            ),
                            Text(
                              'Class - 9',
                              style: textStyle(),
                            )
                          ],
                        )),
                    Positioned(
                        bottom: -12,
                        child: Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {
                                Get.to(const NextScreen());
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 12,
                              )),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Class Teacher',
                style: textStyleHead(),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                      height: 80,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff123456),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.home_work_sharp,
                            size: 26,
                            color: Colors.white,
                          ),
                          Text(
                            'Class - 10',
                            style: textStyleWhite(),
                          )
                        ],
                      )),
                  Positioned(
                      bottom: -12,
                      child: Container(
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {
                              Get.to(const NextScreen());
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            )),
                      )),

// Container(
//     height: 80,
//     width: 120,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(8),
//       color: Colors.blue,
//     ),
//     child: Row(
//       children:  [
//         const Icon(
//           Icons.class_,
//           size: 32,
//           color: Colors.white,
//         ),
//         Text('Class - 9', style: textStyle(),)
//       ],
//     )
// ),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//
//   ],
// )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Information',
                style: textStyleHead(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: _listController.title.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          style: BorderStyle.solid,
                          width: 1,
                          color: Colors.grey,
                        )),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(4),
                          height: size.height * 0.1,
                          width: size.height * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color.fromRGBO(149, 232, 183, 0.5),
                          ),
                          child: Icon(
                            _listController.iconTypes[index],
                            color: const Color.fromRGBO(32, 89, 49, 1.0),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.07,
                        ),
                        Text(
                          _listController.title[index],
                          style: textStyle(),
                        ),
                        const Spacer(),
                        Container(
                          height: 30,
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                          child: IconButton(
                              onPressed: () {
                                Get.to(const Assignment(), arguments: index);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 12,
                              )),
                        )
                      ],
                    ),
                  );
                }),
            SizedBox(
              height: size.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
