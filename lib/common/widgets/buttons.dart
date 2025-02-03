import 'package:flutter/material.dart';

class ButtonsTheme {
  static ButtonStyle elevatedButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
      backgroundColor: Theme.of(context).colorScheme.outline,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
