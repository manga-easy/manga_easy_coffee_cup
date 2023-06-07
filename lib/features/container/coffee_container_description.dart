import 'package:coffee_cup/features/container/coffee_container.dart';
import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeContainerDescription extends StatelessWidget {
  final Alignment? align;
  final Widget child;
  final String textDescriptionCard;
  final IconData? iconDescriptionCard;
  final BorderRadius? borderRadiusDescriptionCard;
  const CoffeeContainerDescription(
      {super.key,
      this.align,
      required this.child,
      required this.textDescriptionCard,
      this.iconDescriptionCard,
      this.borderRadiusDescriptionCard});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: align ?? Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CoffeeContainer(
            child: child,
          ),
        ),
        Container(
          height: 32,
          decoration: BoxDecoration(
            color: ThemeService.of.primaryColor,
            borderRadius: borderRadiusDescriptionCard ??
                const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CoffeeText(
                  text: textDescriptionCard,
                  color: ThemeService.of.primaryText,
                ),
                const SizedBox(width: 5),
                iconDescriptionCard != null
                    ? Icon(
                        iconDescriptionCard,
                        size: 18,
                        color: ThemeService.of.primaryText,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
