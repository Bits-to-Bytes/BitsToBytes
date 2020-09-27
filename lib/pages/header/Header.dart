import 'package:bitstobytes/widgets/navigationButtons.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Container();
        }
        return Container(
          height: 65,
          width: context.width,
          decoration: BoxDecoration(),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.account_circle,
                  size: 45,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavigationButton(title: 'Home'),
                    NavigationButton(title: 'Vision'),
                    NavigationButton(title: 'Team'),
                    NavigationButton(title: 'Contact Us'),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
