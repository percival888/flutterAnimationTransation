import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedRotateRoute<T> extends MaterialPageRoute<T> {
  AnimatedRotateRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: animation.value * pi * 2,
          child: Transform.scale(
            scale: animation.value,
            child: child
          ),
        );
      },
      child: child,
    );
  }
}
