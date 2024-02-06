import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

enum CoffeeTypography {
  title(true, 24),
  button(true, 16),
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
  final double? maskFilter;

  const CoffeeText({
    super.key,
    required this.text,
    this.typography = CoffeeTypography.body,
    this.color,
    this.maxLines,
    this.overflow,
    this.maskFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: typography.size,
            fontWeight: typography.isBold ? FontWeight.bold : FontWeight.normal,
            foreground: Paint()
              ..style = PaintingStyle.fill
              ..color = color ?? ThemeService.of.backgroundText
              ..maskFilter = MaskFilter.blur(
                BlurStyle.normal,
                maskFilter ?? 0,
              ),
          ),
    );
  }
}
