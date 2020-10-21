import 'package:flutter/material.dart';
import 'package:easy_web_view/easy_web_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EventCard extends StatefulWidget {
  const EventCard({
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
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
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
                  SizedBox(width: 90),
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
                SizedBox(width: 90),
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
      width: size.width * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: theme.textTheme.headline2,
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
          width: size.width * 0.20,
          child: Image.asset(
            widget.image,
          ),
        ),
      ],
    );
  }
}



