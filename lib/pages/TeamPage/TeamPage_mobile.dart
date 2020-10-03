import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamPageMobile extends StatefulWidget {
  @override
  _TeamPageMobileState createState() => _TeamPageMobileState();
}

class _TeamPageMobileState extends State<TeamPageMobile> {
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