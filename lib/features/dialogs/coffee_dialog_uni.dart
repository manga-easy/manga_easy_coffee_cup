import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

var _unicorn = AssetsUnicorn.alegre;
var _description = '';

class CoffeeDialogUnicorn extends StatelessWidget {
  final String? description;
  final String title;
  final void Function()? onPressedButtonClose;
  final void Function()? onPressedButtonAccept;

  const CoffeeDialogUnicorn({
    super.key,
    this.description,
    required this.title,
    this.onPressedButtonClose,
    this.onPressedButtonAccept,
  });

  void show(BuildContext context, AssetsUnicorn uni) {
    _description = description ?? '';
    _unicorn = uni;
    showDialog(context: context, builder: build);
  }

  void error(BuildContext context) {
    _unicorn = AssetsUnicorn.sad;
    _description = description!.replaceAll('Exception:', '');
    showDialog(context: context, builder: build);
  }

  void sucess(BuildContext context) {
    _unicorn = AssetsUnicorn.alegre;
    _description = description ?? '';
    showDialog(context: context, builder: build);
  }

  void warning(BuildContext context) {
    _unicorn = AssetsUnicorn.coffee;
    _description = description ?? '';
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
            _description.isNotEmpty
                ? CoffeeText(text: _description)
                : const SizedBox(),
          ],
        ),
        actions: [
          onPressedButtonClose != null
              ? CoffeeButtonText(
                  text: 'Não',
                  onPressed: onPressedButtonClose,
                )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CoffeeButton(
              label: onPressedButtonAccept != null ? 'Sim' : 'OK',
              padding: const EdgeInsets.symmetric(vertical: 10),
              onPressed: onPressedButtonAccept ?? () {
                      Navigator.of(context).pop();
                    },
            ),
          ),
        ]);
  }
}
