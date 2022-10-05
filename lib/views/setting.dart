
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/widgets/textStyles.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(Icons.language),
              SizedBox(
                width: 10,
              ),
              Text('Application Language')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(thickness: 1, color: Colors.grey),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('English'),
                    IconButton(
                        onPressed: () {
                          Get.bottomSheet(
                            Container(
                              height: size.height*0.4,
                              decoration: const BoxDecoration(
                                color:  Colors.white,

                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(20.0)),
                              ),
                              //color: Get.theme.backgroundColor,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height*0.3/8,),
                                  const Padding(
                                    padding:  EdgeInsets.all(8.0),
                                    child:  Text('Application Language'),
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.fromLTRB(8, 8,8, 0),
                                    child:  Divider(thickness: 1, color: Colors.grey),
                                  ),
                                  RadioListTile(
                                      title: const Text("English"),
                                      value: "english",
                                      groupValue: "english",
                                      onChanged: (value) {}
                                  ),
                                  RadioListTile(
                                      title: const Text("Hindi-िन्दी"),
                                      value: "hindi",
                                      groupValue: "hindi",
                                      onChanged: (value) {}
                                  ),
                                  RadioListTile(
                                      title: const Text("اردو-Urdu"),
                                      value: "urdu",
                                      groupValue: "urdu",
                                      onChanged: (value) {}
                                  )
                                ],
                              ))
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.menu_outlined,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('More'),
                  ],
                ),
              ],
            )),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Divider(thickness: 1, color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Change Password'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Privacy Policy'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Terms & Condition'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('About us'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Contact us'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Rate us'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 20),
          child: GestureDetector(
            onTap: () {},
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Share'),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ]),
          ),
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.logout),
          label: const Text('Logout'),
          style: ElevatedButton.styleFrom(
              primary: Colors.black, shape: const StadiumBorder()),
          onPressed: () {},
        ),
        Text(
          'App Version',
          style: textStyle(),
        ),
      ],
    );
  }
}
