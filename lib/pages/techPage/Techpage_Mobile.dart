import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TechPageMobile extends StatefulWidget {
  @override
  _TechPageMobileState createState() => _TechPageMobileState();
}

class _TechPageMobileState extends State<TechPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
    );
  }
}
