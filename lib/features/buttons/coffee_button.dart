import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeButton extends StatelessWidget {
  final String label;
  final void Function()? onPress;
  final Color? corButton;
  final Color? corTexto;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const CoffeeButton({
    super.key,
    required this.label,
    this.onPress,
    this.corButton,
    this.corTexto,
    this.margin,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: margin ?? const EdgeInsets.symmetric(horizontal: 20),
            child: TextButton(
              onPressed: onPress,
              style: TextButton.styleFrom(
                elevation: 12,
                backgroundColor: corButton ?? ThemeService.of.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
              ),
              child: Text(
                label,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: corTexto ?? ThemeService.of.primaryText,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
