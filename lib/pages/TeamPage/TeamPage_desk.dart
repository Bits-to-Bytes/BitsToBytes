import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TeamPageDesk extends StatefulWidget {
  @override
  _TeamPageDeskState createState() => _TeamPageDeskState();
}

class _TeamPageDeskState extends State<TeamPageDesk> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Column(
        children: [
          Text("Meet The B2B Team",style: theme.textTheme.headline2,)
        ],
      ),
    );
  }
}