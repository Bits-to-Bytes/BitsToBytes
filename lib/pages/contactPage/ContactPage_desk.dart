import 'dart:html';

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
                link: "https://github.com/Bits-to-Bytes",
                title: "GitHub",
                colors:theme.accentColor,
                icon: Icon(
                  FlutterIcons.github_ant,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                title: "Facebook",
                link: "https://www.facebook.com/bitstobytes.gecbhavnagar.9",
                colors: theme.accentColor,
                icon: Icon(
                  FlutterIcons.facebook_box_mco,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                link: "https://www.instagram.com/bits.to.bytes/",
                title: "Instagram",
                colors: theme.accentColor,
                icon: Icon(
                  FlutterIcons.social_instagram_sli,
                  color: Colors.white,
                ),
              ),
              SocialButton(
                link: "https://twitter.com/BitstobytesGec",
                title: "Twitter",
                colors:theme.accentColor,
                icon: Icon(
                  FlutterIcons.twitter_ant,
                  color: Colors.white,
                ),
              ),
          SocialButton(
            link: "https://bitstobytesworkspace.slack.com",
            title: "Slack",
            icon: Icon(
              FlutterIcons.slack_faw5d,
              color: Colors.white,
            ),
            colors: theme.accentColor,

          )
        ],
      ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Nr. Sir BPTI Campus,\n'
                  'Vidhyanagar, Bhavnagar,\n'
                  'Gujarat 364002'
            ),
          ),
          SizedBox(
            height: 10,
          ),
      ],
    ),
    );
  }
}
