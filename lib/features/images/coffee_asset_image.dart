import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

class CoffeeAssetImage extends AssetImage {
  CoffeeAssetImage.horn(AssetsHorn asset)
      : super(asset.path, package: CoffeeImage.package);

  CoffeeAssetImage.unicorn(AssetsUnicorn asset)
      : super(asset.path, package: CoffeeImage.package);

  CoffeeAssetImage.state(AssetsState asset)
      : super(asset.path, package: CoffeeImage.package);
  CoffeeAssetImage.cats(AssetsCats asset)
      : super(asset.path, package: CoffeeImage.package);
}
