import 'package:BitsToBytes/providers/ScrollProvider.dart';
import 'package:BitsToBytes/widgets/eventCard.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart' as url;

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:get/get.dart';

import 'package:provider/provider.dart';

class EventPageDesktop extends StatefulWidget {
  @override
  _EventPageDesktopState createState() => _EventPageDesktopState();
}

class _EventPageDesktopState extends State<EventPageDesktop> {
  SwiperController controller = SwiperController();

  final List<String> event = [
    "assets/events/1.jpeg",
    "assets/events/2.jpeg",
    "assets/events/3.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    final scroll = Provider.of<ScrollProvider>(context);
    return Container(
      key: scroll.keys[1],
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      padding: const EdgeInsets.only(top: 48),
      child: Column(
        children: [
          Text(
            "Events",
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Come learn, share and connect with us.",
            style: TextStyle(fontWeight: FontWeight.normal),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Current Events",
            style: Theme.of(context).textTheme.headline3,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 3),
            height: 2,
            width: 240,
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 40.0,
          ),
          // https://miten3377.typeform.com/to/z4e9Ib3n
          EventCard(
            image: "assets/events/1.jpeg",
            isOdd: true,
            link: "https://miten3377.typeform.com/to/z4e9Ib3n",
            info:
                "Throughout this event, you'll learn about Git's core functionality so you can understand how and why it’s used in organizations. We’ll look into some basic features, like Pull Request, branches and merging. We'll demonstrate how we can use git's command line tool to use Github's power very efficiently.",
            title: "Intro to Git & GitHub",
          ),
          // AbsorbPointer(
          //   child: MaterialButton(
          //     onPressed: () {
          //       url.launch(
          //           "https://www.youtube.com/channel/UC9gnf3MrWKz4yNFp2TXurkA");
          //     },
          //     color: Colors.red,
          //     child: Text(
          //       "Youtube",
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
