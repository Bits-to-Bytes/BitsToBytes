import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomFAB extends StatefulWidget {
  @override
  _CustomFABState createState() => _CustomFABState();
}

class _CustomFABState extends State<CustomFAB>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  bool isTrue = false;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return FloatingActionBubble(
      animatedIconData: AnimatedIcons.menu_close,
      backGroundColor: theme.accentColor,
      items: <Bubble>[
        Bubble(

          title: "Contact",
          iconColor: Colors.white,
          bubbleColor: theme.accentColor,
          icon: FlutterIcons.md_contact_ion,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        Bubble(
          title: "Team   ",
          iconColor: Colors.white,
          bubbleColor: theme.accentColor,
          icon: FlutterIcons.users_fea,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        Bubble(
          title: "Events ",
          iconColor: Colors.white,
          bubbleColor: theme.accentColor,
          icon: FlutterIcons.event_mdi,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        Bubble(
          title: "Home   ",
          iconColor: Colors.white,
          bubbleColor: theme.accentColor,
          icon: Icons.home,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
      ],
      animation: _animation,
      onPress: () {
        setState(() {
          if (isTrue) {
            _animationController.reverse();
            isTrue = false;
          } else {
            _animationController.forward();
            isTrue = true;
          }
        });
      },
      iconColor: Colors.white,
    );
  }
}
