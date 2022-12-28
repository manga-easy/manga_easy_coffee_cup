import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

enum CoffeeTypography {
  title(true, 24),
  body(false, 14);

  final bool isBold;
  final double size;
  const CoffeeTypography(this.isBold, this.size);
}

class CoffeeText extends StatelessWidget {
  final String text;
  final CoffeeTypography typography;
  final Color? color;

  const CoffeeText({
    super.key,
    required this.text,
    required this.typography,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: color ?? ThemeService.of.backgroundText,
            fontSize: typography.size,
            fontWeight: typography.isBold ? FontWeight.bold : FontWeight.w100,
          ),
    );
  }
}
