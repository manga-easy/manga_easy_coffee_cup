import 'package:coffee_cup/features/horn_rating/assets_horns.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HornsRating extends StatelessWidget {
  final double hornClassification;
  final bool ignoreGesture;
  final double itemSize;
  final void Function(double) onRatingUpdate;
  const HornsRating({
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
        return Image.asset(AssetsHorn.values[index].path);
      },
      onRatingUpdate: onRatingUpdate,
    );
  }
}
