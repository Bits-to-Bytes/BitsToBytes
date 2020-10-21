import 'package:flutter/material.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EventCardMobile extends StatefulWidget {
  const EventCardMobile({
    Key key,
    this.isOdd,
    this.title,
    this.info,
    this.image,
    this.link,
  }) : super(key: key);

  final bool isOdd;
  final String title;
  final String info;
  final String image;
  final String link;

  @override
  _EventCardMobileState createState() => _EventCardMobileState();
}

class _EventCardMobileState extends State<EventCardMobile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 110,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  (widget.isOdd)
                      ? buildExpandedImage(size)
                      : buildExpandedInfo(theme, size),
                   SizedBox(height: 60),
                  (!widget.isOdd)
                      ? buildExpandedImage(size)
                      : buildExpandedInfo(theme, size),
                ],
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(
              top: 110,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                (widget.isOdd)
                    ? buildExpandedImage(size)
                    : buildExpandedInfo(theme, size),
                SizedBox(height: 60),
                (!widget.isOdd)
                    ? buildExpandedImage(size)
                    : buildExpandedInfo(theme, size),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildExpandedInfo(ThemeData theme, Size size) {
    return Container(
      constraints: BoxConstraints(maxWidth: 450),
      width: size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            widget.info,
            style: theme.textTheme.headline3.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 24.0,
          ),
          Container(
            height: 40,
            width: 130,
            child: MaterialButton(
              height: 40,
              color: theme.accentColor,
              elevation: 10,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Material(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      child: EasyWebView(
                        onLoaded: () {},
                        src: widget.link,
                        isHtml: false, // Use Html syntax
                        isMarkdown: false, // Use markdown syntax
                      ),
                    ),
                  ),
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("Register"), Icon(Icons.arrow_forward)],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildExpandedImage(Size size) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: 600,
          ),
          width: size.width * 0.7,
          child: Image.asset(
            widget.image,
          ),
        ),
      ],
    );
  }
}
