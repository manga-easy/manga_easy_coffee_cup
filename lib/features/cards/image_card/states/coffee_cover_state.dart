import 'package:coffee_cup/coffe_cup.dart';
import 'package:flutter/material.dart';

abstract class CoverState {
  abstract final ImageProvider image;

  CoverState();
}

class CoverSuccess implements CoverState {
  @override
  ImageProvider<Object> image;

  CoverSuccess(this.image);
}

class CoverError extends CoverState {
  @override
  final ImageProvider<Object> image = AssetImage(
    AssetsState.error.path,
    package: CoffeeImage.package,
  );
}

class CoverLoading extends CoverState {
  @override
  final ImageProvider<Object> image = AssetImage(
    AssetsState.loading.path,
    package: CoffeeImage.package,
  );
}
