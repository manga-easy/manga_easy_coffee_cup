import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeSheetBottom extends StatelessWidget {
  final Widget title;
  final Alignment? alignmentTitle;
  final Widget body;
  final Color? backgroundColor;
  final CoffeeButton button;
  const CoffeeSheetBottom({
    super.key,
    required this.title,
    required this.body,
    this.alignmentTitle,
    this.backgroundColor,
    required this.button,
  });

  void show(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: backgroundColor ?? ThemeService.of.backgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      builder: build,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: alignmentTitle ?? Alignment.topLeft,
              child: title,
            ),
            const SizedBox(height: 24),
            body,
            const SizedBox(height: 16),
            button,
          ],
        ),
      ),
    );
  }
}
