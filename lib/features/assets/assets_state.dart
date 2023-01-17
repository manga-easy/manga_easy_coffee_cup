const _state = 'lib/features/assets/states';

enum AssetsState {
  loading('$_state/loading_net.gif'),
  error('$_state/erro_capa.jpg');

  final String path;
  const AssetsState(this.path);
}
