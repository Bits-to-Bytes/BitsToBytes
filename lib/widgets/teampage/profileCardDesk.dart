import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class ProfileCardDesk extends StatefulWidget {
  const ProfileCardDesk({
    Key key,
    this.firstName,
    this.lastName,
    this.title,
    this.profile,
    this.github,
    this.linkedIn,
    this.instagrame,
    this.twitter,
  }) : super(key: key);

  final String firstName;
  final String lastName;
  final String title;
  final String profile;
  final String github;
  final String linkedIn;
  final String instagrame;
  final String twitter;
  @override
  _ProfileCardDeskState createState() => _ProfileCardDeskState();
}

class _ProfileCardDeskState extends State<ProfileCardDesk> {
  double width = 0;

  Color textColor = Color(0xff6c6cff);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: 330,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 12,
            color: Colors.black.withOpacity(0.20),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -170,
            right: -25,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: theme.accentColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 35,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 7, color: theme.accentColor),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: Colors.white),
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: Image.asset(widget.profile).image,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.55),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(text: widget.firstName + " "),
                TextSpan(text: widget.lastName + "\n"),
                TextSpan(
                    text: widget.title + "\n",
                    style: theme.textTheme.headline3.copyWith(
                      fontSize: 15,
                    )),
              ]),
              textAlign: TextAlign.center,
              style: theme.textTheme.headline3.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: Theme(
              isMaterialAppTheme: true,
              data: ThemeData(
                iconTheme: IconThemeData(
                  color: theme.accentColor,
                  size: 15,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      FlutterIcons.linkedin_box_mco,
                    ),
                    onPressed: () {
                      url.launch(widget.linkedIn);
                    },
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: Icon(
                      FlutterIcons.social_instagram_sli,
                    ),
                    onPressed: () {
                      url.launch(widget.instagrame);
                    },
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: Icon(
                      FlutterIcons.github_ant,
                    ),
                    onPressed: () {
                      url.launch(widget.github);
                    },
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: Icon(
                      FlutterIcons.twitter_ant,
                    ),
                    onPressed: () {
                      url.launch(widget.twitter);
                    },
                    iconSize: 18,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
