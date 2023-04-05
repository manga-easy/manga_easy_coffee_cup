import 'package:coffee_cup/features/carrossel/carrossel_dto.dart';
import 'package:coffee_cup/features/carrossel/coffee_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CoffeeCarousel extends StatelessWidget {
  final List<CarrosselDTO> items;
  final void Function(CarrosselDTO link) onTap;
  final double? viewportFraction;

  const CoffeeCarousel({
    super.key,
    required this.items,
    required this.onTap,
    this.viewportFraction,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: items.length,
      options: CarouselOptions(
        height: 140.0,
        showIndicator: false,
        viewportFraction: viewportFraction ?? 0.95,
        autoPlay: true,
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
