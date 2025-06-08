import 'package:flutter/widgets.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_bloc.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_event.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  // Agrupa os testes relacionados ao HomeBloc
  group('HomeBloc', () {
    // Declaração tardia do bloc para ser instanciado antes de cada teste
    late HomeBloc bloc;

    // Função executada antes de cada teste para instanciar um novo HomeBloc
    setUp(() {
      bloc = HomeBloc();
      debugPrint(
        '🧪 [SETUP] HomeBloc criado com estado inicial: ${bloc.state.value}',
      );
    });

    // Função executada após cada teste para liberar recursos e encerrar o bloc
    tearDown(() {
      debugPrint(
        '🧹 [TEARDOWN] Encerrando bloc com estado final: ${bloc.state.value}',
      );
      bloc.close();
    });

    // Teste unitário simples que verifica se o estado inicial do contador é 0
    test('Estado inicial deve ser 0', () {
      debugPrint('🔍 Verificando estado inicial...');
      expect(bloc.state.value, 0);
      debugPrint('✅ Estado inicial é 0');
    });

    // Teste automatizado usando blocTest para verificar se o contador é incrementado
    blocTest<HomeBloc, HomeState>(
      'Deve incrementar o contador de 0 para 1',
      // Cria uma nova instância do HomeBloc para o teste
      build: () {
        debugPrint('🚧 Construindo HomeBloc para incremento...');
        return HomeBloc();
      },
      // Ação executada durante o teste: adiciona o evento de incremento
      act: (bloc) {
        debugPrint('🟢 Enviando evento IncrementCounter...');
        bloc.add(IncrementCounter());
      },
      // Estado esperado após a ação: valor deve ser 1
      expect: () {
        debugPrint('🔮 Espera-se que o estado final seja 1...');
        return [const HomeState(value: 1)];
      },
      // Verificação extra após o teste
      verify: (bloc) {
        debugPrint('✅ Estado após incremento: ${bloc.state.value}');
      },
    );

    // Teste para decrementar o valor do contador
    blocTest<HomeBloc, HomeState>(
      'Deve decrementar o contador de 0 para -1',
      build: () {
        debugPrint('🚧 Construindo HomeBloc para decremento...');
        return HomeBloc();
      },
      act: (bloc) {
        debugPrint('🟢 Enviando evento DecrementCounter...');
        bloc.add(DecrementCounter());
      },
      expect: () {
        debugPrint('🔮 Espera-se que o estado final seja -1...');
        return [const HomeState(value: -1)];
      },
      verify: (bloc) {
        debugPrint('✅ Estado após decremento: ${bloc.state.value}');
      },
    );

    // Teste que simula um incremento seguido de um reset
    blocTest<HomeBloc, HomeState>(
      'Deve resetar o contador para 0 após incremento',
      build: () {
        debugPrint('🚧 Construindo HomeBloc para incremento e reset...');
        return HomeBloc();
      },
      act: (bloc) {
        debugPrint('🟢 Enviando evento IncrementCounter...');
        bloc.add(IncrementCounter());
        debugPrint('🟢 Enviando evento ResetCounter...');
        bloc.add(ResetCounter());
      },
      expect: () {
        debugPrint('🔮 Espera-se que os estados sejam 1 seguido de 0...');
        return [const HomeState(value: 1), const HomeState(value: 0)];
      },
      verify: (bloc) {
        debugPrint('✅ Estado final após reset: ${bloc.state.value}');
      },
    );
  });
}
