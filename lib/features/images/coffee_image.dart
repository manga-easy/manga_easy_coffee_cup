import 'package:coffee_cup/features/assets/assets_unicorn.dart';
import 'package:coffee_cup/features/horn_rating/assets_horns.dart';
import 'package:flutter/material.dart';

class CoffeeImage extends Image {
  CoffeeImage.horn(
    AssetsHorn asset, {
    super.key,
    super.alignment,
    super.package = 'coffee_cup',
  }) : super.asset(asset.path);

  CoffeeImage.unicorn(
    AssetsUnicorn asset, {
    super.key,
    super.alignment,
    super.package = 'coffee_cup',
  }) : super.asset(asset.path);
}
