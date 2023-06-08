import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeContainer extends StatelessWidget {
  final Widget child;
  final AlignmentGeometry? alignDescription;
  final bool isDescription;
  final String? textDescriptionCard;
  final IconData? iconDescriptionCard;
  final BorderRadius? borderRadiusDescriptionCard;
  const CoffeeContainer({
    super.key,
    required this.child,
    this.alignDescription,
    this.textDescriptionCard,
    this.iconDescriptionCard,
    this.borderRadiusDescriptionCard,
    this.isDescription = false,
  });

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: alignDescription ?? Alignment.topRight,
      children: [
        Padding(
          padding:
              isDescription ? const EdgeInsets.only(top: 15) : EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 16),
                width: sizeWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1.5,
                    color: ThemeService.of.selectColor,
                  ),
                ),
                child: child,
              ),
              Container(
                height: 1.5,
                width: sizeWidth,
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: ThemeService.of.selectColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        isDescription
            ? Container(
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CoffeeText(
                        text: textDescriptionCard ?? '',
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
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
