import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactPageMobile extends StatefulWidget {
  @override
  _ContactPageMobileState createState() => _ContactPageMobileState();
}

class _ContactPageMobileState extends State<ContactPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: context.width,
      ),
    );
  }
}
