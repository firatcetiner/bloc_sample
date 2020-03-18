import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class IncrementState extends Equatable {
  const IncrementState();

  @override
  List<Object> get props => [];
}

class Incremented extends IncrementState {
  final int number;

  const Incremented({@required this.number});

  @override
  List<int> get props => [number];

  @override
  String toString() => 'Loaded { number is: $number }';
}
