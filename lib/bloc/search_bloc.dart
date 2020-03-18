import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_event.dart';
import 'search_state.dart';
import 'package:rxdart/rxdart.dart';

class IncrementBloc extends Bloc<IncrementEvent, IncrementState>{

  @override
  IncrementState get initialState => Incremented(number: 0);

  @override
  Stream<IncrementState> transformEvents(Stream<IncrementEvent> events, Stream<IncrementState> Function(IncrementEvent) next) {
    return events.switchMap(next);
  }
  
  @override
  Stream<IncrementState> mapEventToState(IncrementEvent event) async* {
    if (event is IncrementNumber) {
      yield* _mapFetchToState(event);
    }
  }

  Stream<IncrementState> _mapFetchToState(IncrementNumber event) async* {
    if(state is Incremented) {
      await Future.delayed(Duration(seconds: 1));
      print('aaa');
      yield Incremented(number: (state as Incremented).number + 1);
    }
  }
}