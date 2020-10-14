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
      "Bits to bytes is a programming club of GEC Bhavnagar, which works for the development of students. Also, the club is an opportunity bundle which includes many fields of knowledge. Explore it in your ways and learn it through us!",
);

final vision2 = Vision(
  icon: Icon(FlutterIcons.bulb1_ant, size: 45, color: Colors.green),
  title: "Mission",
  info:
      "To educate students so they get exposure to the technical world and enlighten their skills. Hence , the programming club will highlight all the skills of the individual members and develop in a meaningful way.",
);

final vision3 = Vision(
  icon: Icon(
    FlutterIcons.account_group_outline_mco,
    size: 45,
    color: Colors.red,
  ),
  title: "Who is it for?",
  info:
      "Bits to bytes is for EVERYONE who want to learn something and then want to share.The club believes in helping any individual and also using their  skills to upgrade the club.",
);

final List<Vision> visions = [
  vision1,
  vision2,
  vision3,
];
