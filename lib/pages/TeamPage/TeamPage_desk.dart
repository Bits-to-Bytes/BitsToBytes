import 'package:bitstobytes/providers/ScrollProvider.dart';
import 'package:bitstobytes/widgets/teampage/profileCard.dart';
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
                    twitter: "http://twitter.com/vedantjot",
                    instagrame: "http://www.instagram.com/vedantjot",
                  ),
                  ProfileCard(
                    firstName: 'Neel',
                    lastName: 'Gorasiya',
                    title: "Technical Lead",
                    profile: "assets/team/neel.jpeg",
                    linkedIn: "https://www.linkedin.com/in/gorasiyaneel",
                    github: "https://github.com/Neel2904",
                    instagrame: "https://instagram.com/neelg_2904",
                    twitter: "https://twitter.com/Neel_2904",
                  ),
                  ProfileCard(
                    firstName: 'Ishita',
                    lastName: 'Keshawani',
                    title: "Executive Member",
                    profile: "assets/team/ishita.jpeg",
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
                  ProfileCard(
                    firstName: 'Miten',
                    lastName: 'Gajjar',
                    title: "Executive Member",
                    twitter: "https://twitter.com/GajjarMiten",
                    instagrame: "https://www.instagram.com/_.mi10._/",
                    linkedIn: "https://www.linkedin.com/in/mitengajjar/",
                    github: "https://github.com/GajjarMiten",
                    profile: "assets/team/miten.jpeg",
                  ),
                  ProfileCard(
                    firstName: 'Aum',
                    lastName: 'Joshi',
                    title: "Executive Member",
                    profile: "assets/team/aum.jpeg",
                    linkedIn: "https://www.linkedin.com/in/aum-joshi",
                    github: "https://github.com/aumjoshi",
                    twitter: "https://twitter.com/aumjoshii",
                    instagrame: "https://www.instagram.com/aumjoshii_",
                  ),
                  ProfileCard(
                    firstName: 'Yashvi',
                    lastName: 'Patel',
                    title: "Executive Member",
                    profile: "assets/b2b3.png",
                    linkedIn: "https://github.com/patelyashvi",
                    github: "https://github.com/patelyashvi",
                    twitter: "https://twitter.com/YashviP97470687",
                    instagrame: "https://www.instagram.com/yashviwithawhy/",
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
