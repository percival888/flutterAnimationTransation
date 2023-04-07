import 'package:flutter/material.dart';

///
/// des:
///

class SizeAnimationTransitionPage extends StatelessWidget {
  const SizeAnimationTransitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizeTransition(
        sizeFactor: Tween<double>(begin: 0, end: 1.0).animate(
          CurvedAnimation(
            parent: ModalRoute.of(context)!.animation!,
            curve: Curves.easeInOut,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('子部件尺寸动画转场界面'),
          ),
          body: const Icon(
            Icons.flutter_dash,
            size: 400,
          ),
        ),
      ),
    );
  }
}
