import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

class CoffeeButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? corButton;
  final Color? corTexto;
  final EdgeInsetsGeometry padding;
  final double? elevation;
  final EdgeInsets? margin;
  final Widget? icon;

  const CoffeeButton({
    super.key,
    required this.label,
    this.onPressed,
    this.corButton,
    this.corTexto,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.elevation,
    this.margin,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          elevation: elevation,
          backgroundColor: corButton ?? ThemeService.of.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: ThemeService.of.borderRadius,
          ),
          padding: padding,
        ),
        child: CoffeeText(
          text: label,
          typography: CoffeeTypography.button,
          color: corTexto ?? ThemeService.of.primaryText,
        ),
      ),
    );
  }
}
