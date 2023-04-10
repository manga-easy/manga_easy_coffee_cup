import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeButtonText extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final EdgeInsets? padding;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final double? paddingPrefix;
  final double? paddingSufix;

  const CoffeeButtonText(
      {super.key,
      this.onPressed,
      required this.text,
      this.padding,
      this.prefixIcon,
      this.sufixIcon,
      this.paddingPrefix,
      this.paddingSufix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          children: [
            prefixIcon != null ? Icon(prefixIcon) : const SizedBox.shrink(),
            SizedBox(width: paddingPrefix),
            CoffeeText(text: text),
            SizedBox(width: paddingSufix),
            sufixIcon != null ? Icon(sufixIcon) : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
