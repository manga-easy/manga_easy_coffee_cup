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
        Image(
          image: CoffeeAssetImage.cats(AssetsCats.runningCircle),
        ),
        const CoffeeText(
          text: 'Carregando...',
          typography: CoffeeTypography.button,
        ),
        const SizedBox(
          height: 20,
        ),
        LinearProgressIndicator(
          value: widget.animationValue,
          semanticsLabel: 'Linear progress indicator',
          minHeight: 8,
          color: ThemeService.of.primaryColor,
        ),
      ],
    );
  }
}
