const foulder = 'lib/features/assets/horn';

enum AssetsHorn {
  hornGrey('$foulder/chifre_cinza.webp'),
  hornGreen('$foulder/chifre_verde.webp'),
  hornBlue('$foulder/chifre_azul.webp'),
  hornPurple('$foulder/chifre_roxo.webp'),
  hornGolden('$foulder/chifre_dourado.webp'),
  hornRed('$foulder/chifre_vermelho.webp');

  final String path;
  const AssetsHorn(this.path);
}
