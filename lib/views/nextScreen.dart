import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff123456),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back_ios)),
       toolbarHeight: 40,
      ),
      body: Column(
        children: [
          SizedBox(height: size.height*0.01,),
          Row(

            mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Urgent'),
              Text('Not Urgent'),

            ],
          ),
          SizedBox(height: size.height*0.02,),
          Row(
            children: [
              Column(
                children: [
                  SizedBox(height: size.height*0.04,),
                   const RotatedBox(
                      quarterTurns: 1,
                      child: Text('Important' , )),
                  SizedBox(height: size.height*0.2,),
                  const RotatedBox(
                      quarterTurns: 1,
                      child: Text('Not Important'))
                ],
              ),
              Container(
                height: size.height*0.8,
                width: size.width*0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){

                            },
                            child: Container(
                              height: size.height*0.4,
                              //width: size.width*0.4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber, ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              height: size.height*0.4,
                              //width: size.width*0.4,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue, ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                //height: size.height*0.8,
                                //width: size.width*0.4,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.amber, ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                //height: size.height*0.4,
                                //width: size.width*0.4,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue, ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                )),


            ],
          ),
        ],
      ),
    );
  }
}
