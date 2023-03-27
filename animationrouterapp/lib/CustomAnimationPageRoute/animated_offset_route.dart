import 'package:flutter/material.dart';

class AnimatedOffsetRoute<T> extends MaterialPageRoute<T> {
  AnimatedOffsetRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset:
              Offset((1 - animation.value) * 375, (1 - animation.value) * 500),
          child: Transform.scale(
            scale: animation.value,
            child: Opacity(
              opacity: animation.value,
              child: child,
            ),
          ),
        );
      },
      child: child,
    );
  }
}
