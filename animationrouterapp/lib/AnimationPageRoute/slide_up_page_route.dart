import 'package:flutter/material.dart';

class SlideUpPageRoute<T> extends MaterialPageRoute<T> {
  SlideUpPageRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).chain(CurveTween(curve: Curves.ease)).animate(animation),
      child: child,
    );
  }
}
