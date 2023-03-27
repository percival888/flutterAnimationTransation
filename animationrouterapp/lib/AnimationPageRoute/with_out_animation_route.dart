import 'package:flutter/material.dart';

///
/// des:
///

class WithOutAnimationRoute<T> extends MaterialPageRoute<T> {
  WithOutAnimationRoute({
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }
}