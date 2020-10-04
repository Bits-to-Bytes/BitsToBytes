import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  final Icon icon;
  final String title;
  final String link;
  final List<Color> colors;

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
        child: Container(
          alignment: Alignment.center,
          height: 35,
          width: 130,
          decoration: BoxDecoration(
            // color: Color(0xff23282D),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: widget.colors,
            ),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: blureRadius,
                color: Colors.black.withOpacity(0.25),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              widget.icon,
            ],
          ),
        ),
      ),
    );
  }
}
