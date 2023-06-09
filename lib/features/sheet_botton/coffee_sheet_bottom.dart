import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeSheetBottom extends StatelessWidget {
  final List<Widget> children;
  final Widget icon;
  const CoffeeSheetBottom(
      {super.key, required this.children, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        backgroundColor: ThemeService.of.backgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        builder: (BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          );
        },
      ),
      borderRadius: BorderRadius.circular(99),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: icon,
      ),
    );
  }
}
