import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedLogoWidget extends StatelessWidget {
  const AnimatedLogoWidget({
    Key? key,
    required AnimationController controller,
  })  : _controller = controller,
        super(key: key);

  final AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller.view,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * pi,
          child: child,
        );
      },
      child: const SizedBox(
        height: 70,
        child: Image(
          image: AssetImage(
            'assets/images/inapp/logo.jpg',
          ),
        ),
      ),
    );
  }
}
