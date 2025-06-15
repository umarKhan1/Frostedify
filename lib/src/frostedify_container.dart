import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedifyGlassContainer extends StatelessWidget {
  final Widget? child;
  final double blur;
  final BorderRadius borderRadius;
  final Color? color;
  final Gradient? gradient;
  final double? height;
  final double? width;
  final EdgeInsets? padding;

  const FrostedifyGlassContainer({
    super.key,
    this.child,
    this.blur = 25,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.color,
    this.gradient,
    this.height,
    this.width,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          height: height,
          width: width,
          padding: padding ?? const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: gradient ??
                LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withValues(alpha: 0.08),
                    Colors.white.withValues(alpha:0.02),
                  ],
                ),
            borderRadius: borderRadius,
            border: Border.all(
              color: Colors.white.withValues(alpha:0.18),
              width: 1.2,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withValues(alpha:.05),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}
