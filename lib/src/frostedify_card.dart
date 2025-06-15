import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedifyGlassCard extends StatelessWidget {
  final Widget child;
  final double blur;
  final double borderRadius;
  final EdgeInsets padding;
  final Gradient? gradient;
  final Color? color;
  final double elevation;
  final VoidCallback? onTap;
  final double? height;
 final double? width;
  const FrostedifyGlassCard({
    super.key,
    required this.child,
    this.blur = 25,
    this.borderRadius = 20,
    this.padding = const EdgeInsets.all(16),
    this.gradient,
    this.color,
    this.elevation = 8,
    this.onTap,
    this.height,
    this.width
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: PhysicalModel(
        color: Colors.transparent,
        elevation: elevation,
        borderRadius: BorderRadius.circular(borderRadius),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
            child: Container(
              height: height,
              width: width,
              
              padding: padding,
              decoration: BoxDecoration(
                boxShadow: [
  BoxShadow(
    color: Colors.black.withValues(alpha:  0.1),
    blurRadius: 15,
    spreadRadius: 2,
    offset: const Offset(0, 8),
  ),
],
                color: color ?? Colors.white.withValues(alpha:  0.08),
                gradient: gradient,
                borderRadius: BorderRadius.circular(borderRadius),
                border: Border.all(color: Colors.white.withValues(alpha:  0.12)),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
