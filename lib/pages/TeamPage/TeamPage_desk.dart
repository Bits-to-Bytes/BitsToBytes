import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class TeamPageDesk extends StatefulWidget {
  @override
  _TeamPageDeskState createState() => _TeamPageDeskState();
}

class _TeamPageDeskState extends State<TeamPageDesk> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Meet The B2B Team",
            style: theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          Text(
            "Passionate students and faculty staff driving the success of the program.",
            style: theme.textTheme.headline3.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          Text(
            "We are One",
            style: theme.textTheme.headline3.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 64,
          ),
          Column(
            children: [
              Wrap(
                children: [
                  ProfileCard(
                    firstName: 'Vedant',
                    lastName: 'Jotangiya',
                    title: "Management Lead",
                    linkedIn: "http://www.linkedin.com/in/vedantjot",
                    github: "http://github.com/vedantjot",
                    profile: "assets/team/vedant.jpeg",
                  ),
                  ProfileCard(
                    firstName: 'Neel',
                    lastName: 'Gorasiya',
                    title: "Technical Lead",
                    profile: "assets/team/neel.jpeg",
                    linkedIn: "https://www.linkedin.com/in/gorasiyaneel",
                    github: "https://github.com/Neel2904",
                  ),
                  ProfileCard(
                    firstName: 'Ishita',
                    lastName: 'Keshawani',
                    title: "Executive Member",
                    profile: "assets/team/ishita.jpeg",
                    linkedIn: "https://www.linkedin.com/in/ishitakeshawani",
                    github: "https://github.com/ishitakeshawani",
                  ),
                ],
              ),
              SizedBox(
                height: 64,
              ),
              Wrap(
                children: [
                  ProfileCard(
                    firstName: 'Miten',
                    lastName: 'Gajjar',
                    title: "Executive Member",
                    linkedIn: "https://www.linkedin.com/in/mitengajjar/",
                    github: "https://github.com/GajjarMiten",
                    profile: "assets/team/miten.jpeg",
                  ),
                  ProfileCard(
                    firstName: 'Miten',
                    lastName: 'Gajjar',
                    title: "Executive Member",
                    profile: "assets/b2b3.png",
                  ),
                  ProfileCard(
                    firstName: 'Miten',
                    lastName: 'Gajjar',
                    title: "Executive Member",
                    profile: "assets/b2b3.png",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({
    Key key,
    this.firstName,
    this.lastName,
    this.title,
    this.profile,
    this.github,
    this.linkedIn,
  }) : super(key: key);

  final String firstName;
  final String lastName;
  final String title;
  final String profile;
  final String github;
  final String linkedIn;

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  double width = 0;

  Color textColor = Color(0xff6c6cff);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      height: 330,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 12,
            color: Colors.black.withOpacity(0.20),
          )
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -170,
            right: -25,
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: theme.accentColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 35,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 7, color: theme.accentColor),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 5, color: Colors.white),
                ),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: Image.asset(widget.profile).image,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.5),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(text: widget.firstName + " "),
                TextSpan(text: widget.lastName + "\n"),
                TextSpan(
                    text: widget.title + "\n",
                    style: theme.textTheme.headline3.copyWith(
                      fontSize: 15,
                    )),
              ]),
              textAlign: TextAlign.center,
              style: theme.textTheme.headline3.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Stack(
//         alignment: Alignment.center,
//         children: [
//           Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 height: 350,
//                 width: 230,
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).primaryColor,
//                   borderRadius: BorderRadius.circular(12),
// boxShadow: [
//   BoxShadow(
//     offset: Offset(0, 0),
//     spreadRadius: 0,
//     blurRadius: 12,
//     color: Colors.black.withOpacity(0.20),
//   )
// ],
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: AnimatedContainer(
//                   margin: const EdgeInsets.only(left: 35.0),
//                   duration: Duration(milliseconds: 300),
//                   height: 350,
//                   width: width,
//                   decoration: BoxDecoration(
//                     color: theme.accentColor,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Align(
//             alignment: Alignment(-0.9, -0.7),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 180,
//                       width: 220,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8.0),
//                         image: DecorationImage(
//                           fit: BoxFit.contain,
//                           image: Image.asset(widget.profile).image,
//                         ),
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         SizedBox(
//                           height: 75,
//                         ),
//                         IconButton(
//                             icon: Icon(
//                               FlutterIcons.github_alt_faw,
//                               color: textColor,
//                             ),
//                             onPressed: () {
//                               url_launcher.launch(widget.github);
//                             }),
//                         IconButton(
//                           icon: Icon(
//                             FlutterIcons.linkedin_box_mco,
//                             color: textColor,
//                           ),
//                           onPressed: () {
//                             url_launcher.launch(widget.linkedIn);
//                           },
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20.0,
//                 ),
// Text.rich(
//   TextSpan(children: [
//     TextSpan(text: widget.firstName + "\n"),
//     TextSpan(text: widget.lastName + "\n"),
//     TextSpan(
//         text: widget.title + "\n",
//         style: theme.textTheme.headline3.copyWith(
//           fontSize: 15,
//           color: textColor,
//         )),
//   ]),
//   style: theme.textTheme.headline3.copyWith(
//     fontWeight: FontWeight.bold,
//     color: textColor,
//   ),
// ),
//               ],
//             ),
//           ),
//         ],
//       ),
