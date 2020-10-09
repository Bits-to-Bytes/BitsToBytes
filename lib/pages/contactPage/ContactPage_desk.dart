import 'package:bitstobytes/providers/ScrollProvider.dart';
import 'package:bitstobytes/widgets/Buttons/SocialButton.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ContactPageDesk extends StatefulWidget {
  @override
  _ContactPageDeskState createState() => _ContactPageDeskState();
}

class _ContactPageDeskState extends State<ContactPageDesk> {
  @override
  Widget build(BuildContext context) {
    final scroll = Provider.of<ScrollProvider>(context);
    final theme = Theme.of(context);
    return Container(
      key: scroll.keys[4],
      constraints: BoxConstraints(minWidth: context.width, minHeight: 350),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Join Us",
            style: theme.textTheme.headline2,
          ),
          SizedBox(
            height: 45,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: [
              SocialButton(
                title: "GitHub",
                colors: [
                  Color(0xff2b5876),
                  Color(0xff4e4376),
                ],
                icon: Icon(
                  FlutterIcons.github_ant,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                title: "Facebook",
                colors: [
                  Color(0xff00d2ff),
                  Color(0xff3a7bd5),
                ],
                icon: Icon(
                  FlutterIcons.facebook_box_mco,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                title: "Instagrame",
                colors: [
                  Color(0xffB24592),
                  Color(0xffF15F79),
                ],
                icon: Icon(
                  FlutterIcons.social_instagram_sli,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                title: "LinkedIn",
                colors: [
                  Color(0xff7F7FD5),
                  Color(0xff86A8E7),
                  // Color(0xff91EAE4),
                ],
                icon: Icon(
                  FlutterIcons.linkedin_box_mco,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                title: "Twitter",
                colors: [
                  Color(0xff00c6ff),
                  Color(0xff0072ff),
                ],
                icon: Icon(
                  FlutterIcons.twitter_ant,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SocialButton(
            title: "Slack",
            icon: Icon(
              FlutterIcons.slack_faw5d,
              color: Colors.white,
            ),
            colors: [
              // Color(0xff6ecadc),
              // Color(0xff3eb991),
              Color(0xffe9a820),
              Color(0xffe01563),
            ],
          )
        ],
      ),
    );
  }
}
