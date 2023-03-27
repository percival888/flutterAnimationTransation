import 'package:flutter/material.dart';

class RotationRoute<T> extends MaterialPageRoute<T> {
  RotationRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return RotationTransition(
      turns: Tween<double>(
        begin: 0.5,
        end: 0,
      ).chain(CurveTween(curve: Curves.ease)).animate(animation),
      alignment: Alignment.topLeft,
      child: child,
    );
  }
}
