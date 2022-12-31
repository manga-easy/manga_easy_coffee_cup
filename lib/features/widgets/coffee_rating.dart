import 'package:coffee_cup/features/assets/assets_horns.dart';
import 'package:coffee_cup/features/images/coffee_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CoffeeRating extends StatelessWidget {
  final double hornClassification;
  final bool ignoreGesture;
  final double itemSize;
  final void Function(double) onRatingUpdate;
  const CoffeeRating({
    super.key,
    this.hornClassification = 0,
    this.ignoreGesture = false,
    this.itemSize = 40.0,
    required this.onRatingUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      ignoreGestures: ignoreGesture,
      glow: false,
      initialRating: hornClassification,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemSize: itemSize,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, index) {
        return CoffeeImage.horn(AssetsHorn.values[index]);
      },
      onRatingUpdate: onRatingUpdate,
    );
  }
}
