import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedifyGlassButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final IconData? icon;
  final double blur;
  final double borderRadius;
  final Gradient? gradient;
  final Color? color;
  final EdgeInsets padding;
  final TextStyle? textStyle;

  const FrostedifyGlassButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon,
    this.blur = 20,
    this.borderRadius = 16,
    this.gradient,
    this.color,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            padding: padding,
       decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Colors.white.withValues(alpha:  0.2),
      Colors.white.withValues(alpha: 0.05),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  borderRadius: BorderRadius.circular(borderRadius),
  border: Border.all(color: Colors.white.withValues(alpha: 0.15)),
  boxShadow: [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.08),
      blurRadius: 18,
      offset: const Offset(0, 8),
    ),
  ],
),     child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  Icon(icon, color: Colors.white),
                  const SizedBox(width: 8),
                ],
                Text(
                  label,
                  style: textStyle ??
                      const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
