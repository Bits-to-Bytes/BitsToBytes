
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'EntryPage_desk.dart';
import 'EntryPage_mobile.dart';

class EntryPage extends StatefulWidget {
  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: EntryPageDesktop(),
      mobile: EntrypageMobile(),
      tablet: EntryPageDesktop(),
    );
  }
}
