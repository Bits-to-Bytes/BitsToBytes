import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'TeamPage_desk.dart';
import 'TeamPage_mobile.dart';



class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: TeamPageDesk(),
      tablet: TeamPageDesk(),
      mobile: TeamPageDesk(),
    );
  }
}
