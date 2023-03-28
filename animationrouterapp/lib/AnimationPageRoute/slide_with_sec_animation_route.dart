import 'package:flutter/material.dart';

class SlideWithSecAnimationRoute<T> extends MaterialPageRoute<T> {
  SlideWithSecAnimationRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, 1.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }
}
