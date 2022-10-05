import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_project/controllers/list_controller.dart';
import 'package:new_project/widgets/textStyles.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ListController _listController = Get.find();
    return ListView(
      children: [
        const SizedBox(height: 5,),
        SizedBox(
            height: 40,
            width: size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _listController.days.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _listController.daysListIndex.value = index;
                      // _listController.changeDay();
                    },
                    child: Obx(() => Container(
                          width: 40,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          // width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color:
                                  _listController.daysListIndex.value == index
                                      ? const Color(0xff123456)
                                      : Colors.white),
                          child: Text(
                            _listController.days[index],
                            style: GoogleFonts.alike(
                              fontWeight: FontWeight.bold,
                              color:
                                  _listController.daysListIndex.value == index
                                      ? Colors.white
                                      : const Color(0xff123456),
                              fontSize: 10,
                            ),
                          ),
                        )),
                  );
                })),
        Obx(() => _listController.daysListIndex.value == 0
            ? ListView.builder(
                itemCount: _listController.title.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                        // border: Border.all(
                        //   style: BorderStyle.solid,
                        //   width: 1,
                        //   color: Colors.grey,
                        // )
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: size.height * 0.1,
                            width: size.height * 0.09,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.blue,
                            ),
                            child: Icon(
                              _listController.iconTypes[index],
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.07,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _listController.durations[index],
                                style: textStyleBold(),
                              ),
                              Text(
                                _listController.departments[index],
                                style: textStyle(),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(_listController.classList[index]),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  );
                })
            : Column(
                children: [
                  Image.asset('images/noLecture.png'),
                  Text(
                    'No Lecture Today',
                    style: textStyleBold(),
                  )
                ],
              )),
        SizedBox(
          height: size.height * 0.15,
        ),
      ],
    );
  }
}
