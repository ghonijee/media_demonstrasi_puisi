import 'package:flutter_bloc/flutter_bloc.dart';

enum LatihanEvent { BENAR, SALAH }

class LatihanBloc extends Bloc<LatihanEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(LatihanEvent event) async* {
    switch (event) {
      case LatihanEvent.BENAR:
        yield state + 10;
        break;
      case LatihanEvent.SALAH:
        yield state + 0;
        break;
      default:
    }
  }
}
