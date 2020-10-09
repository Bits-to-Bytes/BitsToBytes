import 'package:bitstobytes/providers/ScrollProvider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class EntryPageDesktop extends StatefulWidget {
  @override
  _EntryPageDesktopState createState() => _EntryPageDesktopState();
}

class _EntryPageDesktopState extends State<EntryPageDesktop> {
  final String info =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec neque nibh. Integer finibus vehicula vehicula. Donec fermentum vestibulum molestie. Suspendisse volutpat';

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
      padding: const EdgeInsets.only(left: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LimitedBox(
            maxWidth: context.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Bits To Bytes\n"),
                      TextSpan(
                          text: "GEC Bhavnagar",
                          style: theme.textTheme.headline2),
                    ],
                    style: theme.textTheme.headline1,
                  ),
                ),
                SizedBox(
                  height: 36,
                ),
                Text(
                  info,
                  style: theme.textTheme.headline3,
                ),
                SizedBox(
                  height: 48,
                ),
                MaterialButton(
                  onPressed: () {},
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
                        "Became a member",
                        style: theme.textTheme.headline6,
                      ),
                    ],
                  ),
                  color: theme.accentColor,
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset(
                'assets/b2b1.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
