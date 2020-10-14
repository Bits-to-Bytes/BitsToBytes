import 'package:flutter/material.dart';


class FacultyCard extends StatelessWidget {
  const FacultyCard({
    Key key,
    this.profile,
  }) : super(key: key);

  final String profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: 330,
      width: 250,
      child: Image.asset(profile),
    );
  }
}
