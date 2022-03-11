import 'package:flutter/material.dart';

class ShakeTransition extends StatelessWidget {
  const ShakeTransition(
      {Key? key,
      this.duration = const Duration(milliseconds: 900),
      this.offset = 140.0,
      required this.child})
      : super(key: key);

  ///[duration] shake transitions duration
  final Duration duration;

  ///[offset] shake transitions offset
  final double offset;

  ///[child] gridview child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 1, end: 0),
      duration: duration,
      curve: Curves.elasticOut,
      child: child,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(value * offset, 0),
          child: child,
        );
      },
    );
  }
}
