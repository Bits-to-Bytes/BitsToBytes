import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'Oppertunity_Desk.dart';
import 'Oppertunity_Mobile.dart';

class OppertunityPage extends StatefulWidget {
  @override
  _OppertunityPageState createState() => _OppertunityPageState();
}

class _OppertunityPageState extends State<OppertunityPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: OppertunityDesk(),
      tablet: OppertunityDesk(),
      mobile: OppertunityMobile(),
    );
  }
}
