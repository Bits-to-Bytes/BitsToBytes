

import 'package:BitsToBytes/providers/ScrollProvider.dart';
import 'package:BitsToBytes/widgets/teampage/facultyCard.dart';
import 'package:BitsToBytes/widgets/teampage/profileCardDesk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class TeamPageDesk extends StatefulWidget {
  @override
  _TeamPageDeskState createState() => _TeamPageDeskState();
}

class _TeamPageDeskState extends State<TeamPageDesk> {
  @override
  Widget build(BuildContext context) {
    final scroll = Provider.of<ScrollProvider>(context);
    final theme = Theme.of(context);
    return Container(
      key: scroll.keys[3],
      constraints: BoxConstraints(
        minHeight: context.height,
        minWidth: context.width,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80.0,
          ),
          Text(
            "The BitsToBytes Team",
            style: theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "Passionate students and faculty staff driving the success of the program.",
            style: theme.textTheme.headline3.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "We are One",
            style: theme.textTheme.headline3.copyWith(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 14,
          ),
          Column(
            children: [
              Wrap(
                children: [
                  ProfileCardDesk(
                    firstName: 'Vedant',
                    lastName: 'Jotangiya',
                    title: "Managerial Lead",
                    linkedIn: "http://www.linkedin.com/in/vedantjot",
                    github: "http://github.com/vedantjot",
                    profile: "assets/team/vedant.png",
                    twitter: "http://twitter.com/vedantjot",
                    instagrame: "http://www.instagram.com/vedantjot",
                  ),
                  ProfileCardDesk(
                    firstName: 'Neel',
                    lastName: 'Gorasiya',
                    title: "Technical Lead",
                    profile: "assets/team/neel.png",
                    linkedIn: "https://www.linkedin.com/in/gorasiyaneel",
                    github: "https://github.com/Neel2904",
                    instagrame: "https://instagram.com/neelg_2904",
                    twitter: "https://twitter.com/Neel_2904",
                  ),
                  ProfileCardDesk(
                    firstName: 'Ishita',
                    lastName: 'Keshawani',
                    title: "Executive Member",
                    profile: "assets/team/ishita.png",
                    twitter: "https://twitter.com/ishitakeshawani",
                    instagrame: "https://instagram.com/ishitakeshawani",
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
                  ProfileCardDesk(
                    firstName: 'Miten',
                    lastName: 'Gajjar',
                    title: "Executive Member",
                    twitter: "https://twitter.com/GajjarMiten",
                    instagrame: "https://www.instagram.com/_.mi10._/",
                    linkedIn: "https://www.linkedin.com/in/mitengajjar/",
                    github: "https://github.com/GajjarMiten",
                    profile: "assets/team/miten.png",
                  ),
                  ProfileCardDesk(
                    firstName: 'Aum',
                    lastName: 'Joshi',
                    title: "Executive Member",
                    profile: "assets/team/aum.png",
                    linkedIn: "https://www.linkedin.com/in/aum-joshi",
                    github: "https://github.com/aumjoshi",
                    twitter: "https://twitter.com/aumjoshii",
                    instagrame: "https://www.instagram.com/aumjoshii_",
                  ),
                  ProfileCardDesk(
                    firstName: 'Yashvi',
                    lastName: 'Patel',
                    title: "Executive Member",
                    profile: "assets/team/yashvi.png",
                    linkedIn: "https://github.com/patelyashvi",
                    github: "https://github.com/patelyashvi",
                    twitter: "https://twitter.com/YashviP97470687",
                    instagrame: "https://www.instagram.com/yashviwithawhy/",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 36.0,
          ),
          Text(
            "Board of authority",
            style: theme.textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 14,
          ),
          Wrap(
            children: [
              FacultyCard(
                profile: "assets/faculty/pc.png",
              ),
              FacultyCard(
                profile: "assets/faculty/fa.png",
              ),
              FacultyCard(
                profile: "assets/faculty/fc.png",
              )
            ],
          )
        ],
      ),
    );
  }
}
