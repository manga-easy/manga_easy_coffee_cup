import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

class CoffeeIconButton extends StatelessWidget {
  final void Function() onTap;
  final IconData? icon;
  final double? size;
  final Color? color;
  const CoffeeIconButton({
    super.key,
    required this.onTap,
    this.icon,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(99),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(
          icon,
          color: color ?? ThemeService.of.backgroundIcon,
          size: size ?? 28,
        ),
      ),
    );
  }
}
