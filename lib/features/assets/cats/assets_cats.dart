const _path = 'lib/features/assets/cats';

enum AssetsCats {
  runningAfterHeart('$_path/gato_correndo_atras_coracao.gif'),
  runningCircle('$_path/gato_rodando.gif'),
  hugging('$_path/gato_se_abracado.gif'),
  beingKnockedDown('$_path/gato_sendo_derrubado.gif'),
  smart('$_path/gato_esperto.gif');

  final String path;
  const AssetsCats(this.path);
}
