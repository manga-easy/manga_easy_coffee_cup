import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeSearchField extends StatelessWidget {
  final FocusNode? focusNode;
  final void Function()? onTap;
  final TextEditingController? controller;
  final void Function()? onEditingComplete;
  final bool readOnly;
  final void Function(String)? onChanged;
  final bool autofocus;
  final bool filled;
  final IconData? icon;
  final BorderRadius? borderRadius;
  final Widget? suffixIcon;

  const CoffeeSearchField({
    super.key,
    this.focusNode,
    this.controller,
    this.onEditingComplete,
    this.onTap,
    this.readOnly = false,
    this.onChanged,
    this.autofocus = false,
    this.filled = true,
    this.borderRadius,
    this.icon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    var showBack = ValueNotifier(false);
    return Row(
      children: [
        Expanded(
          child: FocusScope(
            child: Focus(
              onFocusChange: (focus) => showBack.value = focus,
              child: TextFormField(
                onTap: onTap,
                readOnly: readOnly,
                onChanged: onChanged,
                onEditingComplete: onEditingComplete,
                controller: controller,
                autofocus: autofocus,
                focusNode: focusNode,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: ThemeService.of.primaryText),
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
                      width: 3.0,
                      color: ThemeService.of.selectColor,
                    ),
                    borderRadius: borderRadius ?? BorderRadius.circular(25.0),
                  ),
                  filled: filled,
                  hintStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: ThemeService.of.primaryText),
                  fillColor: ThemeService.of.primaryColor,
                  prefixIcon: ValueListenableBuilder<bool>(
                      valueListenable: showBack,
                      builder: (context, value, child) {
                        return IconButton(
                          onPressed: () =>
                              showBack.value ? Navigator.pop(context) : null,
                          icon: Icon(
                            showBack.value ? Icons.arrow_back : Icons.search,
                            color: ThemeService.of.primaryText,
                          ),
                        );
                      }),
                  suffixIcon: suffixIcon,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
