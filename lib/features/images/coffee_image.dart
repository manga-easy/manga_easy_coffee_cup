import 'package:coffee_cup/features/assets/horn/assets_horns.dart';
import 'package:coffee_cup/features/assets/states/assets_state.dart';
import 'package:coffee_cup/features/assets/unicorn/assets_unicorn.dart';
import 'package:flutter/material.dart';

class CoffeeImage extends Image {
  static String package = 'coffee_cup';
  CoffeeImage.horn(
    AssetsHorn asset, {
    super.key,
    super.alignment,
    super.width,
    super.height,
  }) : super.asset(asset.path, package: package);

  CoffeeImage.unicorn(
    AssetsUnicorn asset, {
    super.key,
    super.alignment,
    super.width,
    super.height,
  }) : super.asset(asset.path, package: package);

  CoffeeImage.state(
    AssetsState asset, {
    super.key,
    super.alignment,
    super.width,
    super.height,
  }) : super.asset(asset.path, package: package);
}
