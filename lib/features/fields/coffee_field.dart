// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

import 'package:coffee_cup/coffe_cup.dart';
import 'package:coffee_cup/features/fields/styles/field_icon.dart';
import 'package:coffee_cup/features/fields/styles/field_style.dart';
import 'package:coffee_cup/features/fields/styles/field_text.dart';

class CoffeeField extends StatelessWidget {
  final TextEditingController? controller;
  final FieldText? fieldText;
  final FieldStyle? fieldStyle;
  final FieldIcon? fieldIcon;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final void Function()? onEditingComplete;

  const CoffeeField({
    Key? key,
    this.controller,
    this.fieldText,
    this.fieldStyle,
    this.fieldIcon,
    this.onChanged,
    this.onTap,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoffeeContainer(
      padding: fieldText?.title != null
          ? const EdgeInsets.fromLTRB(16, 10, 16, 8)
          : const EdgeInsets.fromLTRB(16, 4, 16, 10),
      sizeWidth: fieldStyle?.fieldWidth,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          fieldText?.title != null
              ? CoffeeText(
                  text: fieldText!.title!,
                  color: fieldText?.titleColor ?? ThemeService.of.primaryColor,
                )
              : const SizedBox.shrink(),
          TextFormField(
            scrollPadding:
                fieldStyle?.scrollPadding ?? const EdgeInsets.all(20),
            onTap: onTap,
            onChanged: onChanged,
            controller: controller,
            obscureText: fieldText?.obscure ?? false,
            onEditingComplete: onEditingComplete,
            minLines: fieldStyle?.minLines ?? 1,
            maxLines: fieldStyle?.maxLines ?? 1,
            cursorColor:
                fieldStyle?.cursorColor ?? ThemeService.of.backgroundText,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: fieldText?.textWeight ?? FontWeight.normal,
                ),
            initialValue: fieldText?.initText,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              isDense: true,
              border: InputBorder.none,
              suffixIcon: fieldIcon?.suffixIcon,
              prefixIcon: fieldIcon?.icon != null
                  ? Icon(
                      fieldIcon?.icon,
                      color: fieldIcon?.iconColor ??
                          ThemeService.of.backgroundIcon,
                    )
                  : null,
              hintText: fieldText?.hintText,
              hintStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: fieldText?.hintColor ??
                        ThemeService.of.backgroundText.withOpacity(0.6),
                    fontWeight: fieldText?.hintWeight ?? FontWeight.normal,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
