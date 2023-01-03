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

  const CoffeeField({
    super.key,
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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height * 0.1,
      padding: margin ?? const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        obscureText: obscureText,
        minLines: lines ? 10 : null,
        maxLines: lines ? 200 : 1,
        cursorColor: color ?? Colors.black,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              color: color ?? Colors.black,
              fontWeight: FontWeight.bold,
            ),
        decoration: InputDecoration(
          contentPadding: contentPadding,
          filled: true,
          prefixIcon: icone != null
              ? Icon(
                  icone,
                  color: color ?? Colors.black,
                )
              : null,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: color ?? Colors.black,
                fontWeight: FontWeight.bold,
              ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: color ?? ThemeService.of.primaryColor, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? Colors.black, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
