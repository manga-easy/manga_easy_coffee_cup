import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeContainer extends StatelessWidget {
  final Widget child;

  const CoffeeContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    var sizeWidth = MediaQuery.of(context).size.width;
    return Stack(
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
    );
  }
}
