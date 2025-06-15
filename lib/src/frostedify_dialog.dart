import 'package:flutter/material.dart';
import 'package:frostedify/src/frostedify_container.dart';


class FrostedifyDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onConfirm;

  const FrostedifyDialog({
    super.key,
    required this.title,
    required this.content,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: FrostedifyGlassContainer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: const TextStyle(fontSize: 20, color: Colors.white)),
            const SizedBox(height: 10),
            Text(content, style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onConfirm,
              child: const Text("OK"),
            )
          ],
        ),
      ),
    );
  }
}
