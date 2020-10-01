import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EventPageMobile extends StatefulWidget {
  @override
  _EventPageMobileState createState() => _EventPageMobileState();
}

class _EventPageMobileState extends State<EventPageMobile> {
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
