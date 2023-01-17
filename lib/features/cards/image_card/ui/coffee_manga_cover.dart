import 'package:coffee_cup/features/cards/image_card/states/coffee_cover_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:manga_easy_sdk/manga_easy_sdk.dart';

class CoffeeMangaCover extends StatelessWidget {
  final String cover;
  final double width;
  final double height;

  static CacheManager cacheManager = DefaultCacheManager();

  const CoffeeMangaCover({
    super.key,
    required this.cover,
    this.height = 350,
    this.width = 250,
  });

  Future<CoverState> getImageCache(String cover) async {
    try {
      if (cover.contains('.html') || cover.isEmpty) {
        throw Exception('não é imagem');
      }
      if (!Global.filtraImg) {
        throw Exception('Filtro google ativo');
      }
      var ret = await cacheManager.getSingleFile(cover, headers: Global.header);

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
      future: getImageCache(cover),
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
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          padding: const EdgeInsets.all(10),
        );
      },
    );
  }
}
