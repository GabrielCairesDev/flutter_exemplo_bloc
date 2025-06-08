class HomeState {
  final int value;

  const HomeState({required this.value});

  HomeState copyWith({int? value}) {
    return HomeState(value: value ?? this.value);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is HomeState && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
