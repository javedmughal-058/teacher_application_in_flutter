import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_project/widgets/textStyles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Demo Teacher',
              style: textStyleHead(),
            ),
            const CircleAvatar(
              radius: 40,
              backgroundColor: const Color(0xff123456),
              backgroundImage: AssetImage('images/person-male.png'),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 8, 20, 4),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Text(
          'Personal Details',
          style: textStyle(),
        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Email', style: textStyle(),),
          subtitle: Text('teacher@gmail.com',  style: textStyle(),),

        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Phone Number', style: textStyle(),),
          subtitle: Text('123456789',  style: textStyle(),),

        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Date of Birth', style: textStyle(),),
          subtitle: Text('10-02-2002',  style: textStyle(),),

        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Gender', style: textStyle(),),
          subtitle: Text('male',  style: textStyle(),),

        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Qualification', style: textStyle(),),
          subtitle: Text('MCS',  style: textStyle(),),

        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Current Address', style: textStyle(),),
          subtitle: Text('Lahore',  style: textStyle(),),

        ),
        ListTile(

          leading: Container(
            margin: const EdgeInsets.all(4),
            // height: size.height * 0.1,
            // width: size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xff123456),
            ),
            child: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text('Permanent Address', style: textStyle(),),
          subtitle: Text('Vehari',  style: textStyle(),),

        ),
        SizedBox(
          height: size.height*0.1,
        ),
      ],
    );
  }
}
