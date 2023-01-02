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

  const CoffeeButton({
    super.key,
    required this.label,
    this.onPress,
    this.corButton,
    this.corTexto,
    this.padding,
    this.elevation,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
        child: PhysicalModel(
          color: corButton ?? ThemeService.of.primaryColor,
          borderRadius: BorderRadius.circular(25),
          elevation: elevation ?? 12,
          child: SizedBox(
            width: width ?? MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.045,
            child: Center(
                child: CoffeeText(
              text: label,
              color: corTexto ?? ThemeService.of.primaryText,
            )),
          ),
        ),
      ),
    );
  }
}
