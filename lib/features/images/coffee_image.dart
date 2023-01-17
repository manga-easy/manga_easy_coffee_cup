import 'package:coffee_cup/features/assets/assets_horns.dart';
import 'package:coffee_cup/features/assets/assets_unicorn.dart';
import 'package:flutter/material.dart';

class CoffeeImage extends Image {
  CoffeeImage.horn(
    AssetsHorn asset, {
    super.key,
    super.alignment,
    super.width,
    super.height,
  }) : super.asset(asset.path, package: 'coffee_cup');

  CoffeeImage.unicorn(
    AssetsUnicorn asset, {
    super.key,
    super.alignment,
    super.width,
    super.height,
  }) : super.asset(asset.path, package: 'coffee_cup');
}
