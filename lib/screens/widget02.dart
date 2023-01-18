import 'package:flutter/material.dart';
import 'dart:math' as math;

class widget02 extends StatefulWidget {
  const widget02({super.key});

  @override
  State<widget02> createState() => _widget02State();
}

class _widget02State extends State<widget02> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  @override
  void dspose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: FlutterLogo(
            size: 100,
          ),
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
