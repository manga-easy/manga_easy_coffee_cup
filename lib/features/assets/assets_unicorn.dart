const pathas = 'lib/features/assets/unicorn';

enum AssetsUnicorn {
  alegre('$pathas/unicornio-alegre.png'),
  coffee('$pathas/unicornio-cafe.png'),
  lendo('$pathas/unicornio-lendo.png'),
  manutencao('$pathas/unicornio-manutencao.png'),
  sad('$pathas/unicornio-triste.png'),
  fire('$pathas/unicornio_fogo.png'),
  writing('$pathas/unicornio_escrevendo.png'),
  scooter('$pathas/unicornio_lambreta.png'),
  sucess('$pathas/unicornio_sucesso.png'),
  error('$pathas/unicornio-erro.png'),
  error404('$pathas/unicornio-erro.png');

  final String path;
  const AssetsUnicorn(this.path);
}
