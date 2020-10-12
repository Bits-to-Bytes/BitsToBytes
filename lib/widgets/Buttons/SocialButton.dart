import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class SocialButton extends StatefulWidget {
  final Icon icon;
  final String title;
  final String link;
  final Color colors;

  SocialButton({this.icon, this.title, this.link, this.colors});

  @override
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  double blureRadius = 12;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
        child: InkWell(
          onTap: (){
            url.launch(widget.link);
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 210,
            decoration: BoxDecoration(
              // color: Color(0xff23282D),
              shape: BoxShape.circle,
              color: widget.colors,
             // borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: blureRadius,
                  color: Colors.black.withOpacity(0.25),
                )
              ],
            ),
            child: widget.icon
          ),
        ),
      ),
    );
  }
}
