import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeButton extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  final Color? corButton;
  final Color? corTexto;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final double? width;
  final Widget? icon;

  const CoffeeButton({
    super.key,
    required this.label,
    this.onPress,
    this.corButton,
    this.corTexto,
    this.padding,
    this.elevation,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton.icon(
            onPressed: onPress,
            style: TextButton.styleFrom(
              elevation: elevation ?? 12,
              backgroundColor: corButton ?? ThemeService.of.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
            ),
            icon: icon ?? SizedBox(),
            label: CoffeeText(
              text: label,
              typography: CoffeeTypography.button,
              color: corTexto ?? ThemeService.of.primaryText,
            ),
          ),
        ),
      ],
    );
  }
}
