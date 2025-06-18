

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

class TimerCubit extends Cubit<int>{
  // final Stream<int> _stream;

  final StreamController<int> _controller = StreamController();

  TimerCubit() : super(0){
    _controller.stream.listen((value) => emit(value));
  }

  void increment(){
    _controller.add(state + 1);
  }

  void decrement(){
    _controller.add(state - 1);
  }

  @override
  Future<void> close() {
    _controller.close();
    return super.close();
  }

  // TimerCubit() : _stream = Stream.periodic(Duration(seconds: 1), (x) => x+1),
  // super(0){
  //   _stream.listen((value) => emit(value));
  // }
}