import 'package:bitstobytes/widgets/visionPage/VisionCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'VisionModel.dart';

class VisionPageMobile extends StatefulWidget {
  @override
  _VisionPageMobileState createState() => _VisionPageMobileState();
}

class _VisionPageMobileState extends State<VisionPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Column(
        children: visions.map((vision) => VisionCardMobile(vision: vision)).toList(),
      ),
    );
  }
}
