import 'package:bitstobytes/widgets/visionPage/VisionCard.dart';
import 'package:flutter/material.dart';

import 'VisionModel.dart';

class VisionPageMobile extends StatefulWidget {
  @override
  _VisionPageMobileState createState() => _VisionPageMobileState();
}

class _VisionPageMobileState extends State<VisionPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          VisionCardMobile(vision: visions[0]),
          VisionCardMobile(vision: visions[1]),
          VisionCardMobile(vision: visions[2]),
        ],
      ),
    );
  }
}
