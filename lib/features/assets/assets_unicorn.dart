const pathas = 'lib/features/assets/unicorn';

enum AssetsUnicorn {
  happy('$pathas/unicornio_happy.png'),
  coffee('$pathas/unicornio_coffee.png'),
  reading('$pathas/unicornio_reading.png'),
  fixing('$pathas/unicornio_fixing.png'),
  sad('$pathas/unicornio_sad.png'),
  fire('$pathas/unicornio_fire.png'),
  writing('$pathas/unicornio_writing.png'),
  scooter('$pathas/unicornio_scooter.png'),
  error404('$pathas/unicornio_erro_404.png');

  final String path;
  const AssetsUnicorn(this.path);
}
