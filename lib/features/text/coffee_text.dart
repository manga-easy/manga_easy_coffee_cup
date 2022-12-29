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
  final int? maxLines;
  final TextOverflow? overflow;

  const CoffeeText({
    super.key,
    required this.text,
    this.typography = CoffeeTypography.body,
    this.color,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: color ?? ThemeService.of.backgroundText,
            fontSize: typography.size,
            fontWeight: typography.isBold ? FontWeight.bold : FontWeight.w100,
          ),
    );
  }
}
