import 'package:bitstobytes/pages/EntryPage/EntryPage.dart';
import 'package:bitstobytes/pages/events/evnetPage.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
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
        controller: controller,
        child: Column(
          children: [
            EntryPage(),
            EventPage(),
          ],
        ),
      ),
    );
  }
}
