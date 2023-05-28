import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeButtonText extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  const CoffeeButtonText({
    super.key,
    this.onPressed,
    required this.text,
    this.padding,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(padding: padding),
      onPressed: onPressed,
      child: CoffeeText(
        text: text,
        color: color,
      ),
    );
  }
}
