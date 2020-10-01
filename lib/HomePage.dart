import 'package:bitstobytes/components/body/Body.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'components/header/Header.dart';

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
          body: Stack(
            children: [
              Body(),
              Header(),
            ],
          ),
          floatingActionButton: (sizingInformation.isMobile)
              ? FloatingActionButton(onPressed: () {},child: Icon(Icons.menu),)
              : Container(),
        );
      },
    );
  }
}
