import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

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
      // Menu items
      items: <Bubble>[
        // Floating action menu item
        Bubble(
          title: "Settings",
          iconColor: Colors.white,
          bubbleColor: Colors.blue,
          icon: Icons.settings,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        // Floating action menu item
        Bubble(
          title: "Profile",
          iconColor: Colors.white,
          bubbleColor: Colors.blue,
          icon: Icons.people,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        //Floating action menu item
        Bubble(
          title: "Home",
          iconColor: Colors.white,
          bubbleColor: Colors.blue,
          icon: Icons.home,
          titleStyle: TextStyle(fontSize: 16, color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
      ],

      // animation controller
      animation: _animation,

      // On pressed change animation state
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

      // Floating Action button Icon color
      iconColor: Colors.blue,

      // Flaoting Action button Icon
      // icon: AnimatedIcons.add_event,
    );
  }
}
