import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeButtonText extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final IconData? prefix;

  const CoffeeButtonText({
    super.key,
    this.onPressed,
    required this.text,
    this.padding,
    this.color,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Row(
          children: [
            prefix != null
                ? Icon(prefix, color: color)
                : const SizedBox.shrink(),
            prefix != null ? const SizedBox(width: 5) : const SizedBox.shrink(),
            CoffeeText(
              text: text,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
