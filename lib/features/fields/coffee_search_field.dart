import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeSearchField extends StatelessWidget {
  final void Function()? onTap;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final void Function()? onEditingComplete;
  final bool readOnly;
  final void Function(String)? onChanged;
  final bool filled;
  final IconData? icon;
  final BorderRadius? borderRadius;
  final Widget? prefixIcon;
  final String? hintText;

  const CoffeeSearchField({
    Key? key,
    this.onTap,
    this.controller,
    this.onEditingComplete,
    this.readOnly = false,
    this.onChanged,
    this.filled = true,
    this.icon,
    this.borderRadius,
    this.prefixIcon,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);

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
                .bodyMedium!
                .copyWith(color: ThemeService.of.backgroundText),
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              hoverColor: ThemeService.of.selectColor,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: borderRadius ?? BorderRadius.circular(35.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: borderRadius ?? BorderRadius.circular(35.0),
              ),
              filled: filled,
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: ThemeService.of.backgroundText.withOpacity(.5)),
              fillColor: ThemeService.of.selectColor,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
