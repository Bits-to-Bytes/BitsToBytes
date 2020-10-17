
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'TechPage_desk.dart';
import 'Techpage_Mobile.dart';

class TechPage extends StatefulWidget {
  @override
  _TechPageState createState() => _TechPageState();
}

class _TechPageState extends State<TechPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: TechPageDesk(),
      tablet: TechPageDesk(),
      mobile: TechPageMobile() ,
    );
  }
}
