import 'package:bitstobytes/pages/techPage/TechPage_desk.dart';
import 'package:bitstobytes/pages/techPage/Techpage_Mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
