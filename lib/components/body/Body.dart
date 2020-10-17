
import 'package:BitsToBytes/pages/EntryPage/EntryPage.dart';
import 'package:BitsToBytes/pages/OpportunityPage/OppertunityPage.dart';
import 'package:BitsToBytes/pages/TeamPage/TeamPage.dart';
import 'package:BitsToBytes/pages/contactPage/ContactPage.dart';
import 'package:BitsToBytes/pages/eventPage/evnetPage.dart';
import 'package:BitsToBytes/pages/techPage/TechPage.dart';
import 'package:BitsToBytes/pages/visionPage/visionPage.dart';
import 'package:BitsToBytes/providers/ScrollProvider.dart';
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
