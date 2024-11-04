import 'package:flutter/material.dart';
import 'package:tms/widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  num? left;
  List<Map<String, dynamic>>? desc;
  num? done;
  bool isLast;

  Task({
    this.icon,
    this.title,
    this.bgcolor,
    this.iconcolor,
    this.btncolor,
    this.left,
    this.done,
    this.desc,
    this.isLast = false,
  });

  static List<Task> generateTasks() {
    return [
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        desc: [
          {
            'time': '09:00AM',
            'title': 'Create Video',
            'slot': '09:00AM - 11:00AM',
            'tlcolor': kRedDark,
            'bgcolor': kRedLight
          },
          {
            'time': '10:00AM',
            'title': 'Make presentation',
            'slot': '10:00AM - 11:00AM',
            'tlcolor': kRedDark,
            'bgcolor': kRedLight
          },
          {
            'time': '11:00AM',
            'title': '',
            'slot': '',
            'tlcolor': kRedDark,
            'bgcolor': kRedLight
          },
          {
            'time': '12:00PM',
            'title': 'Go To Gym',
            'slot': '12:00PM - 1:00PM',
            'tlcolor': kRedDark,
            'bgcolor': kRedLight
          },
          {
            'time': '1:00PM',
            'title': 'Call with client',
            'slot': '1:00PM - 2:00PM',
            'tlcolor': kRedDark,
            'bgcolor': kYellowLight
          },
        ],
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 1,
        done: 4,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 2,
        done: 6,
        isLast: false,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}
