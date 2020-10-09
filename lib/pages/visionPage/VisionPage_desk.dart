import 'package:bitstobytes/providers/ScrollProvider.dart';
import 'package:bitstobytes/widgets/visionPage/VisionCard.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'VisionModel.dart';

class VisionPageDesktop extends StatefulWidget {
  @override
  _VisionPageDesktopState createState() => _VisionPageDesktopState();
}

class _VisionPageDesktopState extends State<VisionPageDesktop> {
  @override
  Widget build(BuildContext context) {
    final scroll = Provider.of<ScrollProvider>(context);
    return Container(
      key: scroll.keys[2],
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Row(
          children: [
            VisionCardDesk(vision: visions[0]),
            VisionCardDesk(vision: visions[1]),
            VisionCardDesk(vision: visions[2]),
          ],
        ),
      ),
    );
  }
}
