import 'package:coffee_cup/features/cards/image_card/states/coffee_cover_state.dart';
import 'package:coffee_cup/shared/shared_static.dart';
import 'package:flutter/material.dart';

class CoffeeMangaCover extends StatelessWidget {
  final String cover;
  final double width;
  final double height;
  final BorderRadiusGeometry? border;
  final bool filtraImg;
  final Map<String, String>? headers;

  const CoffeeMangaCover({
    super.key,
    required this.cover,
    this.height = 350,
    this.width = 250,
    this.border,
    required this.filtraImg,
    this.headers,
  });

  Future<CoverState> _getImageCache(String cover) async {
    try {
      if (cover.contains('.html') || cover.isEmpty) {
        throw Exception('não é imagem');
      }
      if (!filtraImg) {
        throw Exception('Filtro google ativo');
      }
      var ret = await SharedStatic.cacheManager
          .getSingleFile(cover, headers: headers);

      if (ret.lengthSync() <= 151) {
        throw Exception('Imagem invalida');
      }
      return CoverSuccess(FileImage(ret));
    } catch (e) {
      return CoverError();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<CoverState>(
      future: _getImageCache(cover),
      builder: (context, snapshot) {
        CoverState state = CoverLoading();
        if (snapshot.data is CoverSuccess) {
          state = snapshot.data!;
        }
        if (snapshot.data is CoverError) {
          state = snapshot.data!;
        }
        return Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: state.image,
              fit: BoxFit.cover,
            ),
            borderRadius: border ??
                const BorderRadius.all(
                  Radius.circular(20),
                ),
          ),
          padding: const EdgeInsets.all(10),
        );
      },
    );
  }
}
