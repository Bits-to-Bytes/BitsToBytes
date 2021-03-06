import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart' as url;

class ProfileCardMobile extends StatelessWidget {
  const ProfileCardMobile({
    Key key,
    this.firstName,
    this.lastName,
    this.title,
    this.profile,
    this.github,
    this.linkedIn,
    this.instagrame,
    this.twitter,
  }) : super(key: key);

  final String firstName;
  final String lastName;
  final String title;
  final String profile;
  final String github;
  final String linkedIn;
  final String instagrame;
  final String twitter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: 330,
      width: 250,
      child: Stack(
        children: [
          Image.asset(profile),
          Align(
            alignment: Alignment(0, 0.8),
            child: Theme(
              isMaterialAppTheme: true,
              data: ThemeData(
                iconTheme: IconThemeData(
                  color: theme.accentColor,
                  size: 15,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(
                      FlutterIcons.linkedin_box_mco,
                    ),
                    onPressed: () {
                      url.launch(linkedIn);
                    },
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: Icon(
                      FlutterIcons.social_instagram_sli,
                    ),
                    onPressed: () {
                      url.launch(instagrame);
                    },
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: Icon(
                      FlutterIcons.github_ant,
                    ),
                    onPressed: () {
                      url.launch(github);
                    },
                    iconSize: 18,
                  ),
                  IconButton(
                    icon: Icon(
                      FlutterIcons.twitter_ant,
                    ),
                    onPressed: () {
                      url.launch(twitter);
                    },
                    iconSize: 18,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xff6c6cff)
      ..style = PaintingStyle.fill;

    Path path = Path();

    path.addOval(Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: 150,
    ));

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
