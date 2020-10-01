import 'package:bitstobytes/providers/ThemeProvider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavigationButton extends StatefulWidget {
  final String title;
  NavigationButton({this.title});

  @override
  _NavigationButtonState createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  double width = 0;

  Size textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            width = textSize(
              widget.title,
              GoogleFonts.sourceCodePro(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: theme.currentTheme.accentColor,
              ),
            ).width;
          });
        },
        onExit: (event) {
          setState(() {
            width = 0;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                theme.changeTheme();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  widget.title,
                  style: theme.currentTheme.appBarTheme.textTheme.headline1,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 200),
              curve: Curves.easeOutQuad,
              height: 2,
              width: width,
              color: theme.currentTheme.accentColor,
            )
          ],
        ),
      ),
    );
  }
}
