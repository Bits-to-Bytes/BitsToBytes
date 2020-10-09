import 'package:bitstobytes/widgets/navigationButtons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          return Container();
        }
        return Container(
          height: 75,
          width: context.width,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8),
                blurRadius: 24,
                color: Color(0xff000000).withOpacity(0.10),
              )
            ],
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 48.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/logo.png',
                        scale: 1,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Bits ',
                              style: GoogleFonts.acme(
                                  fontSize: 30, color: Colors.white),
                            ),
                            TextSpan(
                              text: 'to ',
                              style: GoogleFonts.acme(
                                  fontSize: 30, color: Colors.white),
                            ),
                            TextSpan(
                              text: 'Bytes',
                              style: GoogleFonts.acme(
                                  fontSize: 30, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NavigationButton(
                      title: 'Home',
                      page: 1,
                    ),
                    NavigationButton(
                      title: 'Events',
                      page: 2,
                    ),
                    NavigationButton(
                      title: 'Vision',
                      page: 3,
                    ),
                    NavigationButton(
                      title: 'Team',
                      page: 4,
                    ),
                    NavigationButton(
                      title: 'Contact',
                      page: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
