// Classe base abstrata para eventos do contador
abstract class HomeEvent {}

class IncrementCounter extends HomeEvent {}

class DecrementCounter extends HomeEvent {}

class ResetCounter extends HomeEvent {}
