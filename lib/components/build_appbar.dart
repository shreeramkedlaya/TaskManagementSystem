import 'package:flutter/material.dart';
import 'package:tms/components/text_helper.dart';
import 'package:tms/screens/menu_page.dart';
import 'package:tms/screens/profile_page.dart';
import 'package:tms/widgets/constant.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: kwhite,
    elevation: 0,
    title: Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 10, top: 5),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: klightgrey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
              child: Image.asset('lib/assets/profile.jpg'),
            ),
          ),
        ),
        const SizedBox(width: 20),
        labelText('Hello Shreeram', 22, Colors.black),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.more_vert,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MenuPage(),
            ),
          );
        },
      )
    ],
  );
}
