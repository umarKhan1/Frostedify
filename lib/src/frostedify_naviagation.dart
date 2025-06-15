import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedifyNaviagationBootomNavigationClass {
  final IconData icon;
  final String label;

  FrostedifyNaviagationBootomNavigationClass({required this.icon, this.label = ''});
}

class FrostedifyNaviagationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final List<FrostedifyNaviagationBootomNavigationClass> items;
  final double blurSigma;
  final Color? backgroundColor;
  final Color selectedColor;
  final Color unselectedColor;

  const FrostedifyNaviagationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.blurSigma = 25,
    this.backgroundColor,
    this.selectedColor = Colors.white,
    this.unselectedColor = Colors.white70,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Colors.white.withValues( alpha: .08);

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: bgColor,
            border: Border(
              top: BorderSide(
                color: Colors.white.withValues( alpha: .2),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(items.length, (i) {
              final item = items[i];
              final isSelected = currentIndex == i;
              return GestureDetector(
                onTap: () => onTap(i),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      item.icon,
                      color: isSelected ? selectedColor : unselectedColor,
                    ),
                    if (item.label.isNotEmpty)
                      Text(
                        item.label,
                        style: TextStyle(
                          color: isSelected ? selectedColor : unselectedColor,
                          fontSize: 12,
                        ),
                      ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
