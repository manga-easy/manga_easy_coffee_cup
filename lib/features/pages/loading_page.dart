import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

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
        const CoffeeText(text: 'Carregando...')
      ],
    );
  }
}
