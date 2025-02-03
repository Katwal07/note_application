import 'package:flutter/material.dart';

class TextFormFields {
  static InputDecoration inputDecoration(
      BuildContext context, String hintText) {
    return InputDecoration(
      // alignLabelWithHint: true,
      hintText: hintText,
      labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.outline,
          ),
      errorStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
      hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.outline,
          ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      filled: true,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
    );
  }

  static InputDecoration inputDecorationforPassword(
      BuildContext context, String hintText) {
    return InputDecoration(
      hintText: hintText,
      labelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.outline,
          ),
      errorStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
      hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.outline,
          ),
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      filled: true,
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
    );
  }

  static TextStyle textStylesforForms(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).colorScheme.outline,
        );
  }

static InputDecoration inputDecorationWithSuffix(
      BuildContext context, String hintText, IconButton icon) {
    return InputDecoration(
      hintText: hintText,
      suffixIcon: icon,
      filled: true,
      fillColor: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
      border: const OutlineInputBorder(),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      errorStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.error,
          ),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.error)),
    );
  }

}
