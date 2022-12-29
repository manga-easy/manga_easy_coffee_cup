import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeSwitchButton extends StatelessWidget {
  final bool value;
  final void Function(bool)? onChanged;
  const CoffeeSwitchButton({super.key, required this.value, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      activeColor: ThemeService.of.primaryColor,
    );
  }
}
