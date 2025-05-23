import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print('Bloc: ${bloc.runtimeType}, Transition: $transition');
  }
}
