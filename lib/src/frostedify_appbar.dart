import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedifyAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final TextStyle? textStyle;

  const FrostedifyAppbar({super.key, required this.title,this.textStyle, this.actions});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: AppBar(
          backgroundColor: Colors.white.withValues(alpha:  0.1),
          title: Text(title, style: textStyle,),
          actions: actions,
          elevation: 0,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
