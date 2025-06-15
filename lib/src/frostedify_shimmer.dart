import 'package:flutter/material.dart';

class LiquidShimmer extends StatefulWidget {
  const LiquidShimmer({super.key});

  @override
  State<LiquidShimmer> createState() => _LiquidShimmerState();
}

class _LiquidShimmerState extends State<LiquidShimmer>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat();

  @override
  void dispose() {
    super.dispose();
    return _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-1.0 + 2.0 * _controller.value, -1.0),
              end: Alignment(1.0 + 2.0 * _controller.value, 1.0),
              colors: [
                Colors.white.withValues(alpha:  0.05),
                Colors.white.withValues(alpha:  0.15),
                Colors.white.withValues(alpha:  0.05),
              ],
              stops: const [0.0, 0.5, 1.0],
            ),
          ),
        );
      },
    );
  }
}
