class CountState {
  final int _count;

  int get count => _count;

  CountState._(this._count);
  factory CountState.initial() => CountState._(0);
  factory CountState.newState(int count) => CountState._(count);
}