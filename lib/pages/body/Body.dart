import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
 @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Container(
        height:context.height,
        width: context.width,
        color: Colors.red,
      ),
    );
  }
}