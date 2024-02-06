import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

class CoffeeTextSpan extends TextSpan {
  final CoffeeTypography typography;
  final Color? color;

  const CoffeeTextSpan(
      {this.typography = CoffeeTypography.body,
      this.color,
      super.text,
      super.children});
  @override
  TextStyle? get style => const TextStyle().copyWith(
        color: color ?? ThemeService.of.backgroundText,
        fontSize: typography.size,
        fontWeight: typography.isBold ? FontWeight.bold : FontWeight.w100,
      );
}
