import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeButton extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  final Color? corButton;
  final Color? corTexto;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final EdgeInsets? externalPadding;
  final Widget? icon;

  const CoffeeButton({
    super.key,
    required this.label,
    this.onPress,
    this.corButton,
    this.corTexto,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    this.elevation = 12,
    this.externalPadding,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    //TODO: Remover row e expanded
    return Padding(
      padding: externalPadding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(
            child: TextButton.icon(
              onPressed: onPress,
              style: TextButton.styleFrom(
                elevation: elevation,
                backgroundColor: corButton ?? ThemeService.of.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: ThemeService.of.borderRadius,
                ),
                padding: padding,
              ),
              icon: icon ?? const SizedBox(),
              label: CoffeeText(
                text: label,
                typography: CoffeeTypography.button,
                color: corTexto ?? ThemeService.of.primaryText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
