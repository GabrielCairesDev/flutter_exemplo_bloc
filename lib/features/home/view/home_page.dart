import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_bloc.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_event.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${state.value}',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Botão de decremento
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        context.read<HomeBloc>().add(DecrementCounter());
                      },
                    ),
                    const SizedBox(width: 16),
                    // Botão de reset
                    IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: () {
                        context.read<HomeBloc>().add(ResetCounter());
                      },
                    ),
                    const SizedBox(width: 16),
                    // Botão de incremento
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        context.read<HomeBloc>().add(IncrementCounter());
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
