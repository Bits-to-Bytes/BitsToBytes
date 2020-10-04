import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TechPageMobile extends StatefulWidget {
  @override
  _TechPageMobileState createState() => _TechPageMobileState();
}

class _TechPageMobileState extends State<TechPageMobile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0) +
            EdgeInsets.only(top: 64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Technologies We're Excited About",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              "Opportunities to learn & access deep technical content.",
              textAlign: TextAlign.center,
              style: theme.textTheme.headline3.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 104.0,
            ),
            TechCard(
              image: "assets/b2b3.png",
              title: "Android Development",
              info:
                  "Every year Google developers release exciting new updates to the world's most popular operating system. We always have sessions to keep you updated and mastering the latest trends in modern Android development.",
            ),
            TechCard(
              image: "assets/b2b4.png",
              title: "Web Development",
              info:
                  "Learn the core foundations of a delightful web experience both for the user and developer. Stay up to tabs with emerging and trending technologies. Get access to a guided, tutorial and hands-on coding experience.",
            ),
            TechCard(
              image: "assets/b2b5.png",
              title: "Cloud Computing",
              info:
                  "For passionate developers who want to stay relevant in a cloud first world where businesses demand for agility and innovation and prompt rise of cloud-native applications to ridges gaps between data, insight, and action.",
            ),
            TechCard(
              image: "assets/b2b6.png",
              title: "Machine Intelligence",
              info:
                  "Learn how to drive user engagement and retention with intelligent apps that are able to effectively serve users what they need without the fuss by providing these systems with the ability to utomatically learn and improve from experience without being explicitly programmed.",
            ),
          ],
        ),
      ),
    );
  }
}

class TechCard extends StatefulWidget {
  const TechCard({
    Key key,
    this.title,
    this.info,
    this.image,
    this.link,
  }) : super(key: key);

  final String title;
  final String info;
  final String image;
  final String link;

  @override
  _TechCardState createState() => _TechCardState();
}

class _TechCardState extends State<TechCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40.0),
      child: Column(
        children: [
          buildExpandedImage(size),
          SizedBox(height: 38.0,),
          buildExpandedInfo(theme, size),
        ],
      ),
    );
  }

  Widget buildExpandedInfo(ThemeData theme, Size size) {
    return Container(
      width: size.width * 0.90,
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
            style: theme.textTheme.headline3.copyWith(fontSize: 15),
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
              onPressed: () {},
              child: Row(
                children: [Text("CodeLabs"), Icon(Icons.star)],
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
          width: size.width * 0.80,
          child: Image.asset(widget.image),
        ),
      ],
    );
  }
}
