import 'dart:io';

import 'package:coffee_cup/coffe_cup.dart';
import 'package:coffee_cup/shared/shared_static.dart';
import 'package:flutter/material.dart';

class CoffeeBanner extends StatelessWidget {
  final String link;
  final void Function()? onTap;
  final Map<String, String>? headers;

  Future<File> _getImageCache(String cover) async {
    if (cover.contains('.html') || cover.isEmpty) {
      throw Exception('não é imagem');
    }
    var ret =
        await SharedStatic.cacheManager.getSingleFile(cover, headers: headers);

    if (ret.lengthSync() <= 151) {
      throw Exception('Imagem invalida');
    }
    return ret;
  }

  const CoffeeBanner({
    super.key,
    required this.link,
    this.onTap,
    this.headers,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: FutureBuilder<File>(
        future: _getImageCache(link),
        builder: (context, snapshot) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                image: snapshot.data != null
                    ? FileImage(snapshot.data!)
                    : CoffeeAssetImage.state(AssetsState.loading)
                        as ImageProvider,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
