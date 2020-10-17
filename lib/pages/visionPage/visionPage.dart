
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'VisionPage_desk.dart';
import 'Visionpage_Mobile.dart';

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
