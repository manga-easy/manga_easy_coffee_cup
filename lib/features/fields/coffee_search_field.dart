import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeSearchField extends StatelessWidget {
  final void Function()? onTap;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final bool readOnly;
  final void Function(String)? onChanged;
  final bool filled;
  final IconData? icon;
  final BorderRadius? borderRadius;
  final Widget? suffixIcon;
  final bool showBackOnly;

  const CoffeeSearchField({
    super.key,
    this.controller,
    this.onEditingComplete,
    this.onTap,
    this.readOnly = false,
    this.onChanged,
    this.filled = true,
    this.borderRadius,
    this.icon,
    this.suffixIcon,
    this.showBackOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            onTap: onTap,
            readOnly: readOnly,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            controller: controller,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: ThemeService.of.backgroundText),
            decoration: InputDecoration(
              hintText: 'Pesquisar',
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              hoverColor: ThemeService.of.selectColor,
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 2.0),
                borderRadius: borderRadius ?? BorderRadius.circular(25.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: ThemeService.of.backgroundIcon,
                ),
                borderRadius: borderRadius ?? BorderRadius.circular(25.0),
              ),
              filled: filled,
              hintStyle: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: ThemeService.of.backgroundText),
              fillColor: ThemeService.of.backgroundColor,
              prefixIcon: IconButton(
                onPressed: () => showBackOnly ? Navigator.pop(context) : null,
                icon: Icon(
                  showBackOnly ? Icons.arrow_back : Icons.search,
                  color: ThemeService.of.backgroundIcon,
                ),
              ),
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
