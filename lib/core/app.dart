import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_exemplo_bloc/features/home/bloc/home_bloc.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<HomeBloc>(create: (_) => HomeBloc())],
      child: MaterialApp(
        title: 'Flutter Demo BLoC',
        routes: AppRoutes.routes,
        initialRoute: AppRoutes.home,
      ),
    );
  }
}
