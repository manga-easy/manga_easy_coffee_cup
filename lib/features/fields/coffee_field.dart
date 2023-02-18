import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeField extends StatelessWidget {
  final String? hintText;
  final bool obscureText;
  final IconData? icone;
  final TextEditingController? controller;
  final Color? color;
  final bool lines;
  final EdgeInsetsGeometry? contentPadding;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final EdgeInsets? scrollPadding;
  final FontWeight? fontWeight;
  final FontWeight? fontWeightHint;

  const CoffeeField(
      {super.key,
      this.hintText,
      this.obscureText = false,
      this.icone,
      this.controller,
      this.color,
      this.lines = false,
      this.contentPadding,
      this.onChanged,
      this.suffixIcon,
      this.height,
      this.margin,
      this.onTap,
      this.onEditingComplete,
      this.scrollPadding,
      this.fontWeight,
      this.fontWeightHint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 54,
      padding: margin,
      child: TextFormField(
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
              color: color ?? ThemeService.of.backgroundText,
              fontWeight: fontWeight ?? FontWeight.normal,
            ),
        decoration: InputDecoration(
          contentPadding: contentPadding,
          filled: true,
          prefixIcon: icone != null
              ? Icon(
                  icone,
                  color: color ?? ThemeService.of.backgroundIcon,
                )
              : null,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: color ?? ThemeService.of.backgroundText.withOpacity(0.6),
              fontWeight: fontWeightHint ?? FontWeight.normal),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: color ?? ThemeService.of.primaryColor, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: color ?? ThemeService.of.primaryColor, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: color ?? ThemeService.of.backgroundText, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
