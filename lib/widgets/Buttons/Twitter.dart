import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TwitterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        // color: Color(0xff00acee),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff00c6ff),
            Color(0xff0072ff),
          ],
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Twitter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            FlutterIcons.twitter_ant,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}