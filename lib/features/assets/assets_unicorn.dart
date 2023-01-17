const pathas = 'lib/features/assets/unicorn';

enum AssetsUnicorn {
  alegre('$pathas/unicornio-alegre.png'),
  coffee('$pathas/unicornio-cafe.png'),
  lendo('$pathas/unicornio-lendo.png'),
  manutencao('$pathas/unicornio-manutencao.png'),
  sad('$pathas/unicornio-triste.png'),
  fire('$pathas/unicornio_fogo.png');

  final String path;
  const AssetsUnicorn(this.path);
}
