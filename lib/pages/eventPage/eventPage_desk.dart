import 'package:bitstobytes/providers/ScrollProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EventPageDesktop extends StatefulWidget {
  @override
  _EventPageDesktopState createState() => _EventPageDesktopState();
}

class _EventPageDesktopState extends State<EventPageDesktop> {
  @override
  Widget build(BuildContext context) {
    final scroll = Provider.of<ScrollProvider>(context);
    return Container(
      key: scroll.keys[1],
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      padding: const EdgeInsets.only(top: 48),
      child: Column(
        children: [
          Text(
            "Events",
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Come learn, share and connect with us.",
            style: TextStyle(fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Upcoming Events",
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            height: 2,
            width: 240,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 100.0,
          ),
          Text(
            "Launch event coming soon",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23),
          ),
        ],
      ),
    );
  }
}
