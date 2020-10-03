import 'package:bitstobytes/pages/EntryPage/EntryPage.dart';
import 'package:bitstobytes/pages/OpportunityPage/OppertunityPage.dart';
import 'package:bitstobytes/pages/eventPage/evnetPage.dart';
import 'package:bitstobytes/pages/techPage/TechPage.dart';
import 'package:bitstobytes/pages/visionPage/visionPage.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: controller,
        child: Column(
          children: [
            EntryPage(),
            EventPage(),
            VisionPage(),
            OppertunityPage(),
            TechPage(),
          ],
        ),
      ),
    );
  }
}
