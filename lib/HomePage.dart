import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'pages/body/Body.dart';
import 'pages/footer/Footer.dart';
import 'pages/header/Header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(
            children: [
              Header(),
             
            ],
          ),
          floatingActionButton: (sizingInformation.isMobile)
              ? FloatingActionButton(onPressed: () {})
              : Container(),
        );
      },
    );
  }
}
