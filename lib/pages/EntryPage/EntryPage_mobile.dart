
import 'package:BitsToBytes/providers/ScrollProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EntrypageMobile extends StatefulWidget {
  @override
  _EntrypageMobileState createState() => _EntrypageMobileState();
}

class _EntrypageMobileState extends State<EntrypageMobile> {
  final String info =
      'Being a programming club of the institution, we assure pretty much everything you ask for! We conduct events and workshops, hold lectures and talks, and even host coding competitions and hackathons.';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scroll = Provider.of<ScrollProvider>(context);
    return Container(
      key: scroll.keys[0],
      constraints: BoxConstraints(
        minHeight: context.height,
      ),
      width: context.width,
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            scale: 2,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Bits To Bytes\n"),
                TextSpan(
                  text: "GEC Bhavnagar",
                  style: theme.textTheme.headline2,
                ),
              ],
              style: theme.textTheme.headline1,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            info,
            style: theme.textTheme.headline3.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          MaterialButton(
            onPressed: () {
              showDialog(
                context: context,
                child: AlertDialog(
                  content: Text(
                    "Registration will start soon",
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            height: 40,
            minWidth: 200,
            elevation: 10,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.account_circle_rounded,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Become a member",
                  style: theme.textTheme.headline6,
                ),
              ],
            ),
            color: theme.accentColor,
          ),
          SizedBox(
            height: 32,
          ),
          Image.asset('assets/b2b1.png')
        ],
      ),
    );
  }
}
