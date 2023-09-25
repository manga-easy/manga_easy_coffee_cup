import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:themes/manga_easy_themes.dart';

class UnicornPage extends StatelessWidget {
  final AssetsUnicorn unicorn;
  final String title;
  final String body;
  final String? titleButton;
  final void Function()? actionButton;

  const UnicornPage({
    super.key,
    required this.unicorn,
    required this.body,
    required this.title,
    this.titleButton,
    this.actionButton,
  });

  Future<void> show(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: build),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.of.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.close,
                      color: ThemeService.of.backgroundText,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    CoffeeImage.unicorn(unicorn),
                    const SizedBox(height: 30),
                    CoffeeText(
                      text: title,
                      typography: CoffeeTypography.title,
                    ),
                    const SizedBox(height: 30),
                    CoffeeText(
                      text: body,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CoffeeButton(
                  label: titleButton ?? 'OK',
                  onPressed: actionButton ?? () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
