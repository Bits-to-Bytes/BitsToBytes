import 'package:bitstobytes/pages/eventPage/eventPage_desk.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EventPage extends StatefulWidget {
  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: EventPageDesktop(),
      tablet: EventPageDesktop(),
      mobile: EventPageDesktop(),
    );
  }
}
