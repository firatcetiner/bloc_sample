import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class IncrementEvent extends Equatable {
  const IncrementEvent();

  @override
  List<Object> get props => [];
}

class IncrementNumber extends IncrementEvent {
  @override
  String toString() => 'Increment';
}

class Idle extends IncrementEvent {}