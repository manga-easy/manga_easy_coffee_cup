import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final IconData? icone;
  final TextEditingController? controller;
  final Color? color;
  final bool lines;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final EdgeInsets? scrollPadding;
  final FontWeight? fontWeight;
  final FontWeight? fontWeightHint;
  final String? initText;
  final String title;

  const CoffeeField(
      {super.key,
      this.hintText,
      this.obscureText = false,
      this.icone,
      this.controller,
      this.color,
      this.lines = false,
      this.onChanged,
      this.suffixIcon,
      this.onTap,
      this.onEditingComplete,
      this.scrollPadding,
      this.fontWeight,
      this.fontWeightHint,
      this.initText,
      this.title = ''});

  @override
  Widget build(BuildContext context) {
    return CoffeeContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title.isEmpty
              ? const SizedBox.shrink()
              : CoffeeText(
                  text: title,
                  color: ThemeService.of.primaryColor,
                ),
          const SizedBox(height: 4),
          TextFormField(
            scrollPadding: scrollPadding ?? const EdgeInsets.all(20),
            onTap: onTap,
            onChanged: onChanged,
            controller: controller,
            obscureText: obscureText,
            onEditingComplete: onEditingComplete,
            minLines: lines ? 10 : null,
            maxLines: lines ? 200 : 1,
            cursorColor: color ?? ThemeService.of.backgroundText,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: fontWeight ?? FontWeight.normal,
                ),
            initialValue: initText,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              suffixIcon: suffixIcon,
              prefixIcon: icone != null
                  ? Icon(
                      icone,
                      color: color ?? ThemeService.of.backgroundIcon,
                    )
                  : null,
              hintText: hintText,
              hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: color ??
                        ThemeService.of.backgroundText.withOpacity(0.6),
                    fontWeight: fontWeightHint ?? FontWeight.normal,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
