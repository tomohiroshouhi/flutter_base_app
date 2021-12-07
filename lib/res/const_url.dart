class ConstUrl {
  // `--dart-define=FLAVOR=dev` と指定した場合
  static const flavor = String.fromEnvironment('FLAVOR');
  // flavor = dev
}