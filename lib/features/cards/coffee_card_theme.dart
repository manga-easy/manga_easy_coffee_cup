import 'package:flutter/material.dart';
import 'package:manga_easy_themes/manga_easy_themes.dart';

class CoffeeCardTheme extends StatelessWidget {
  final ThemeApp themeApp;
  final Themes themes;
  final void Function(Themes themeApp) changeTheme;
  const CoffeeCardTheme({
    required this.changeTheme,
    required this.themeApp,
    required this.themes,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => changeTheme(themes),
      child: Column(
        children: [
          Card(
            shape: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 4),
              borderRadius: BorderRadius.circular(20),
            ),
            color: themeApp.backgroundColor,
            child: SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: themeApp.borderRadius,
                      color: themeApp.backgroundText,
                    ),
                  ),
                  Container(
                    width: 65,
                    height: 70,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: themeApp.borderRadius,
                      color: themeApp.selectText,
                    ),
                    child: Container(
                      width: 65,
                      height: 30,
                      margin: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: themeApp.borderRadius,
                        color: themeApp.selectColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: themeApp.primaryColor,
                        ),
                        Container(
                          height: 25,
                          width: 65,
                          decoration: BoxDecoration(
                            borderRadius: themeApp.borderRadius,
                            color: themeApp.primaryText,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            Themes.values[themes.index].title,
            style: Theme.of(context).textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
