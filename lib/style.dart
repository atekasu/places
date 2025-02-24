import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle titileMedium(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          color: color ?? Colors.black,
        );
  }

  static TextStyle titleLarge(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
          color: color ?? Colors.black,
        );
  }

  static TextStyle bodyText(BuildContext context, {Color? color}) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: color ?? Colors.black,
        );
  }
}
