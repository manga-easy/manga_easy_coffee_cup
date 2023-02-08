import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeButtonText extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CoffeeButtonText({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(),
      onPressed: onPressed,
      child: CoffeeText(
        text: text,
      ),
    );
  }
}
