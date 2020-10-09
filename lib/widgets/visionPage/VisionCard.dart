import 'package:bitstobytes/pages/visionPage/VisionModel.dart';
import 'package:flutter/material.dart';

class VisionCardDesk extends StatefulWidget {
  final Vision vision;
  const VisionCardDesk({
    Key key,
    this.vision,
  }) : super(key: key);

  @override
  _VisionCardDeskState createState() => _VisionCardDeskState();
}

class _VisionCardDeskState extends State<VisionCardDesk> {
  double blureRadius = 12;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            blureRadius = 20;
          });
        },
        onExit: (event) {
          setState(() {
            blureRadius = 12;
          });
        },
        child: Container(
          margin: const EdgeInsets.all(24.0),
          constraints: BoxConstraints(
            minHeight: 280,
          ),
          width: 400,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: blureRadius,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.20),
              )
            ],
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              widget.vision.icon,
              SizedBox(
                height: 16.0,
              ),
              Text(
                widget.vision.title,
                style: TextStyle(
                  fontFamily: "SourceCodePro",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Text(
                widget.vision.info,
                style: TextStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VisionCardMobile extends StatefulWidget {
  final Vision vision;
  const VisionCardMobile({
    Key key,
    this.vision,
  }) : super(key: key);

  @override
  _VisionCardMobileState createState() => _VisionCardMobileState();
}

class _VisionCardMobileState extends State<VisionCardMobile> {
  double blureRadius = 12;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      constraints: BoxConstraints(
        maxWidth: 480,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: blureRadius,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.20),
          )
        ],
      ),
      padding: const EdgeInsets.all(28.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.vision.icon,
          SizedBox(
            height: 16.0,
          ),
          Text(
            widget.vision.title,
            style: TextStyle(
              fontFamily: "SourceCodePro",
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            widget.vision.info,
            style: TextStyle(),
          )
        ],
      ),
    );
  }
}
