import 'package:flutter/material.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({super.key});

  @override
  State<AnimatedBackground> createState() =>
      _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _color1;
  late Animation<Color?> _color2;
  late Animation<Color?> _color3;

  @override
  void initState() {
    super.initState();

    // Animation controller
    _controller =
    AnimationController(vsync: this, duration: const Duration(seconds: 5))
      ..repeat(reverse: true);

    // Gradient color animations
    _color1 = ColorTween(
      begin: Colors.blueAccent,
      end: Colors.white54,
    ).animate(_controller);

    _color2 = ColorTween(
      begin: Colors.blueAccent,
      end: Colors.white,
    ).animate(_controller);

    _color3 = ColorTween(
      begin: Colors.white24,
      end: Colors.blue,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    _color1.value ?? Colors.white,
                    _color2.value ?? Colors.blue,
                    _color3.value ?? Colors.white,
                  ],
                ),
              ),
            );
          },
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [
                0.01,
                0.3,
              ],
              colors: [
                Colors.white.withValues(alpha: 0.7),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              stops: const [0.01, 0.3],
              colors: [
                Colors.white.withValues(alpha: 0.7),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ]),
    );
  }
}