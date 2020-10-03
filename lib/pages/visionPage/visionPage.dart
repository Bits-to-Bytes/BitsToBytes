import 'package:bitstobytes/pages/visionPage/VisionPage_desk.dart';
import 'package:bitstobytes/pages/visionPage/Visionpage_Mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class VisionPage extends StatefulWidget {
  @override
  _VisionPageState createState() => _VisionPageState();
}

class _VisionPageState extends State<VisionPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: VisionPageDesktop(),
      tablet: VisionPageDesktop(),
      mobile: VisionPageMobile(),
    );
  }
}
