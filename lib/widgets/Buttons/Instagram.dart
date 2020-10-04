import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class InstaButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        // color: Color(0xff23282D),
        gradient: LinearGradient(
          colors: [
            Color(0xffB24592),
            Color(0xffF15F79),
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
            "Instagram",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            FlutterIcons.social_instagram_sli,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
