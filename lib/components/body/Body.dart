import 'package:bitstobytes/pages/EntryPage/EntryPage.dart';
import 'package:bitstobytes/pages/OpportunityPage/OppertunityPage.dart';
import 'package:bitstobytes/pages/TeamPage/TeamPage.dart';
import 'package:bitstobytes/pages/contactPage/ContactPage.dart';
import 'package:bitstobytes/pages/eventPage/evnetPage.dart';
import 'package:bitstobytes/pages/techPage/TechPage.dart';
import 'package:bitstobytes/pages/visionPage/visionPage.dart';
import 'package:bitstobytes/providers/ScrollProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final scroll = Provider.of<ScrollProvider>(context);
    return Container(
      child: CupertinoScrollbar(
        thickness: 5,
        controller: scroll.controller,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: scroll.controller,
          child: Column(
            children: [
              EntryPage(),
              EventPage(),
              VisionPage(),
              OppertunityPage(),
              TechPage(),
              TeamPage(),
              ContactPage(),
            ],
          ),
        ),
      ),
    );
  }
}
