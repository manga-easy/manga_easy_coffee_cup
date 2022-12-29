const foulder = 'horn';

enum AssetsHorn {
  hornCinza('$foulder/chifre_cinza.webp'),
  hornVerde('$foulder/chifre_verde.webp'),
  hornAzul('$foulder/chifre_azul.webp'),
  hornRoxo('$foulder/chifre_roxa.webp'),
  hornDourado('$foulder/chifre_dourado.webp'),
  hornVermelho('$foulder/chifre_vermelho.webp');

  final String path;
  const AssetsHorn(this.path);
}
