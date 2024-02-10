const pathas = 'lib/features/assets/unicorn';

enum AssetsUnicorn {
  coffee('$pathas/uni_coffee.png'),
  error404('$pathas/uni_erro_404.png'),
  fire('$pathas/uni_fire.png'),
  fixing('$pathas/uni_fixing.png'),
  happy('$pathas/uni_happy.png'),
  magic('$pathas/uni_magic.png'),
  pixel('$pathas/uni_pixel.png'),
  reading('$pathas/uni_reading.png'),
  sad('$pathas/uni_sad.png'),
  scooter('$pathas/uni_scooter.png'),
  search('$pathas/uni_search.png'),
  sucess('$pathas/coffee_sucess.png'),
  star('$pathas/uni_star.png'),
  writing('$pathas/uni_writing.png');

  final String path;
  const AssetsUnicorn(this.path);
}
