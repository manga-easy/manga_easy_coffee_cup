import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class LoadingPage extends StatefulWidget {
  final double animationValue;
  const LoadingPage({super.key, required this.animationValue});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CoffeeImage.cats(
          AssetsCats.runningCircle,
        ),
        ClipRRect(
          borderRadius: ThemeService.of.borderRadius,
          child: LinearProgressIndicator(
            value: widget.animationValue,
            semanticsLabel: 'Linear progress indicator',
            minHeight: 12,
            color: ThemeService.of.primaryColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        CoffeeText(
          text: '${(widget.animationValue * 100).ceil()}%',
          typography: CoffeeTypography.button,
        ),
      ],
    );
  }
}
