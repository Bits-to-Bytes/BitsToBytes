import 'package:bitstobytes/pages/contactPage/ContactPage_desk.dart';
import 'package:bitstobytes/pages/contactPage/ContactPage_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ContactPageDesk(),
      tablet: ContactPageDesk(),
      mobile: ContactPageDesk(),
    );
  }
}
