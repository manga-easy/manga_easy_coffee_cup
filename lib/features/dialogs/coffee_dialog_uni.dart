import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

var _unicorn = AssetsUnicorn.alegre;
var _middleText = '';

class CoffeeDialogUnicorn extends StatelessWidget {
  final String? middleText;
  final String title;
  final List<Widget>? buttons;

  const CoffeeDialogUnicorn({
    super.key,
    this.buttons,
    this.middleText,
    required this.title,
  });

  void show(BuildContext context) {
    _middleText = middleText ?? '';
    showDialog(context: context, builder: build);
  }

  void error(BuildContext context) {
    _unicorn = AssetsUnicorn.sad;
    _middleText = middleText!.replaceAll('Exception:', '');
    showDialog(context: context, builder: build);
  }

  void sucess(BuildContext context) {
    _unicorn = AssetsUnicorn.alegre;
    _middleText = middleText ?? '';
    showDialog(context: context, builder: build);
  }

  void warning(BuildContext context) {
    _unicorn = AssetsUnicorn.coffee;
    _middleText = middleText ?? '';
    showDialog(context: context, builder: build);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ThemeService.of.backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeService.of.borderRadius,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CoffeeText(
                text: title,
                typography: CoffeeTypography.title,
              ),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  color: ThemeService.of.backgroundText,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          CoffeeImage.unicorn(
            _unicorn,
            height: 150,
          ),
          const SizedBox(
            height: 16,
          ),
          _middleText.isNotEmpty
              ? CoffeeText(text: _middleText)
              : const SizedBox(),
        ],
      ),
      actions: buttons ??
          [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CoffeeButton(
                label: 'OK',
                padding: const EdgeInsets.symmetric(vertical: 10),
                onPress: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
    );
  }
}
