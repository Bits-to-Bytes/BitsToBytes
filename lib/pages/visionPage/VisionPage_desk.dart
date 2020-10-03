import 'package:bitstobytes/widgets/visionPage/VisionCard.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'VisionModel.dart';

class VisionPageDesktop extends StatefulWidget {
  @override
  _VisionPageDesktopState createState() => _VisionPageDesktopState();
}

class _VisionPageDesktopState extends State<VisionPageDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Row(
          children: visions.map((vision) => VisionCardDesk(vision: vision)).toList(),
        ),
      ),
    );
  }
}
