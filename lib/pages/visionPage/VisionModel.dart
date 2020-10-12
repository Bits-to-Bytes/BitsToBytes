import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Vision {
  final Icon icon;

  final String title;
  final String info;

  Vision({this.icon, this.title, this.info});
}

final vision1 = Vision(
  icon: Icon(
    FlutterIcons.rocket1_ant,
    color: Colors.blue,
    size: 45,
  ),
  title: "What is BitsToBytes?",
  info:
      "The BitsToBytes club is a grassroots channel through which We provides development skills, mobile and web development skills for students, towards employability.",
);

final vision2 = Vision(
  icon: Icon(FlutterIcons.bulb1_ant, size: 45, color: Colors.green),
  title: "Mission",
  info:
      "For students to learn development skills, solve problems through technology and inspire them to be world className developers and changemakers.",
);

final vision3 = Vision(
  icon: Icon(
    FlutterIcons.account_group_outline_mco,
    size: 45,
    color: Colors.red,
  ),
  title: "Who is it for?",
  info:
      "BitsToBytes activities are targeted at University students and any others including faculty members who want to learn development skills & work to solve real-life problems.",
);

final List<Vision> visions = [
  vision1,
  vision2,
  vision3,
];
