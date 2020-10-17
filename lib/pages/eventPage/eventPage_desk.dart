import 'package:BitsToBytes/providers/ScrollProvider.dart';
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
          Text(
            "\"Launch Event\"",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 12,
                  spreadRadius: 0,
                  color: Colors.black.withOpacity(0.20),
                )
              ],
            ),
            height: 260,
            width: 260,
            child: Swiper(
              controller: controller,
              loop: true,
              autoplay: true,
              itemCount: 3,
              itemBuilder: (_, index) => Container(
                height: 260,
                width: 260,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Image.asset(event[index]),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("The launch event of BitsToBytes programming club"),
          SizedBox(
            height: 20,
          ),
          AbsorbPointer(
            child: MaterialButton(
              onPressed: () {
                url.launch(
                    "https://www.youtube.com/channel/UC9gnf3MrWKz4yNFp2TXurkA");
              },
              color: Colors.red,
              child: Text(
                "Youtube",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
