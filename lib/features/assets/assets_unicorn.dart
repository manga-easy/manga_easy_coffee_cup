const pathas = 'lib/features/assets/unicorn';

enum AssetsUnicorn {
  happy('$pathas/unicornio-alegre.png'),
  coffee('$pathas/unicornio-cafe.png'),
  reading('$pathas/unicornio-lendo.png'),
  maintenance('$pathas/unicornio-manutencao.png'),
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
