import 'package:animationrouterapp/AnimationPage/transition_page.dart';
import 'package:animationrouterapp/AnimationPageRoute/fade_route.dart';
import 'package:animationrouterapp/AnimationPageRoute/rotation_router.dart';
import 'package:animationrouterapp/AnimationPageRoute/scale_route.dart';
import 'package:animationrouterapp/line_button.dart';
import 'package:flutter/material.dart';
import 'AnimationPageRoute/slide_up_page_route.dart';
import 'AnimationPageRoute/slide_with_sec_animation_route.dart';

class SystemAnimationPage extends StatelessWidget {
  const SystemAnimationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("系统动画转场"),
        leading: null,
      ),
      body: Column(
        children: <Widget>[
          // 使用系统提供的动画进行转场
          LineButton(
            title: "滑动转场从下至上",
            onPressed: () {
              Navigator.push(
                context,
                SlideUpPageRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                  settings: const RouteSettings(
                    name: "SlideUp",
                  ),
                ),
              );
            },
          ),
          LineButton(
            title: "当前滑动转场从右至左,下一个界面push时从左到右消失不见",
            height: 70,
            onPressed: () {
              Navigator.push(
                context,
                SlideWithSecAnimationRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "两倍效果缩放转场",
            onPressed: () {
              Navigator.push(
                context,
                ScaleRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "旋转180度转场",
            onPressed: () {
              Navigator.push(
                context,
                RotationRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "透明度动画转场",
            onPressed: () {
              Navigator.push(
                context,
                FadeRoute(
                  builder: (context) {
                    return const TransitionPage();
                  },
                ),
              );
            },
          ),
          LineButton(
            title: "大小动画转场（不生效）",
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const TransitionPage();
                  },
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    return SizeTransition(
                      sizeFactor: CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut,
                      ),
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 2000),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
