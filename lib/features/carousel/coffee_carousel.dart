// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_cup/features/carousel/carousel_dto.dart';
import 'package:coffee_cup/features/carousel/coffee_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CoffeeCarousel extends StatelessWidget {
  final List<CarouselDTO> items;
  final void Function(CarouselDTO link) onTap;
  final bool autoPlay;
  final double? viewportFraction;

  const CoffeeCarousel({
    Key? key,
    required this.items,
    required this.onTap,
    required this.autoPlay,
    this.viewportFraction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: items.length,
      options: CarouselOptions(
        height: 140.0,
        showIndicator: false,
        viewportFraction: viewportFraction ?? 0.95,
        autoPlay: autoPlay,
        autoPlayAnimationDuration: const Duration(milliseconds: 600),
        autoPlayCurve: Curves.easeInOutCubic,
        padEnds: false,
      ),
      itemBuilder: (context, index, seila) {
        var i = items[index];
        return Padding(
          padding: EdgeInsets.only(
            right: items.last == i ? 0.0 : 8.0,
          ),
          child: CoffeeBanner(
            onTap: () => onTap(i),
            link: i.image,
          ),
        );
      },
    );
  }
}
