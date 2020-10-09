import 'package:bitstobytes/components/body/Body.dart';
import 'package:bitstobytes/widgets/FloatingActionButton.dart';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'components/header/Header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double padding = 75.0;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          padding = 0;
        } else {
          padding = 75.0;
        }

        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: padding),
                child: Body(),
              ),
              Header(),
            ],
          ),
          floatingActionButton:
              (sizingInformation.isMobile) ? CustomFAB() : Container(),
        );
      },
    );
  }
}
