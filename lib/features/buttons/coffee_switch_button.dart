import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

class CoffeeSwitchButton extends StatelessWidget {
  final bool value;
  final void Function(bool)? onChanged;
  final Color? activeColor;

  const CoffeeSwitchButton({
    super.key,
    required this.value,
    this.onChanged,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: activeColor ?? ThemeService.of.primaryColor,
    );
  }
}
