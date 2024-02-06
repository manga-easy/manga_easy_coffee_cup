import 'package:coffee_cup/features/container/styles/description_style.dart';
import 'package:coffee_cup/features/text/coffee_text.dart';
import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

class CoffeeContainer extends StatelessWidget {
  final Widget child;
  final double? sizeWidth;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final DescriptionStyle? descriptionStyle;
  const CoffeeContainer({
    super.key,
    required this.child,
    this.sizeWidth,
    this.padding,
    this.margin,
    this.descriptionStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Stack(
        alignment: descriptionStyle?.align  ?? Alignment.topRight,
        children: [
          Padding(
            padding: descriptionStyle?.textCard != null
                ? const EdgeInsets.only(top: 15)
                : EdgeInsets.zero,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding: padding ?? const EdgeInsets.fromLTRB(16, 14, 16, 16),
                  width: sizeWidth ?? MediaQuery.of(context).size.width,
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
           descriptionStyle?.textCard != null
              ? Container(
                  height: 32,
                  decoration: BoxDecoration(
                    color: descriptionStyle?.colorCard ?? ThemeService.of.primaryColor,
                    borderRadius: descriptionStyle?.borderRadiusCard ??
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
                          text: descriptionStyle?.textCard ?? '',
                          color: descriptionStyle?.colorTextCard ??
                              ThemeService.of.primaryText,
                        ),
                        const SizedBox(width: 5),
                        descriptionStyle?.iconCard != null
                            ? Icon(
                                descriptionStyle?.iconCard,
                                size: 18,
                                color: descriptionStyle?.colorTextCard ??
                                    ThemeService.of.primaryText,
                              )
                            : const SizedBox.shrink()
                      ],
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
