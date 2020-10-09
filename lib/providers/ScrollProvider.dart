import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ScrollProvider with ChangeNotifier {
  final ScrollController _controller = ScrollController();

  ScrollController get controller => _controller;

  final List<GlobalKey> keys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  double get maxScrollOffset {
    final offset = _controller.position.maxScrollExtent;

    return offset;
  }

  void animateTo(int page) {
    Scrollable.ensureVisible(
      keys[page - 1].currentContext,
      duration: Duration(milliseconds: 1500),
      curve: Curves.easeOut,
    );
  }
}
