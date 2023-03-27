import 'package:animationrouterapp/AnimationPage/size_animation_transition_page.dart';
import 'package:animationrouterapp/CustomAnimationPageRoute/animated_rotate_route.dart';
import 'package:animationrouterapp/CustomAnimationPageRoute/custom_cupertino_route_no_gesture.dart';
import 'package:flutter/material.dart';
import 'AnimationPage/transition_page.dart';
import 'AnimationPageRoute/with_out_animation_route.dart';
import 'CustomAnimationPageRoute/animated_offset_route.dart';
import 'line_button.dart';

class CustomAnimationPage extends StatelessWidget {
  const CustomAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("自定义动画转场"),
        leading: null,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          LineButton(
            title: "自定义旋转+缩放动画转场",
            onPressed: () {
              Navigator.push(
                context,
                AnimatedRotateRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "自定义位置变换+渐显动画转场",
            onPressed: () {
              Navigator.push(
                context,
                AnimatedOffsetRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "在页面内部实现动画",
            onPressed: () {
              Navigator.of(context).push(
                WithOutAnimationRoute(
                  builder: (context) {
                    return const SizeAnimationTransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "滑动转场动画+手势",
            onPressed: () {
              Navigator.of(context)
                  .push(CustomCupertinoRouteNoGesture(builder: (context) {
                return const TransitionPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
