import 'package:flutter/material.dart';

class ScaleRoute<T> extends MaterialPageRoute<T> {
  ScaleRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return ScaleTransition(
      scale: Tween<double>(
        begin: 2.0,
        end: 1.0,
      ).chain(CurveTween(curve: Curves.ease)).animate(animation),
      alignment: Alignment.topRight,
      child: child,
    );
  }
}
