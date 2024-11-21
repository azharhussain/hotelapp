// ignore_for_file: must_be_immutable

part of 'refund_method_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RefundMethod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RefundMethodEvent extends Equatable {}

/// Event that is dispatched when the RefundMethod widget is first created.
class RefundMethodInitialEvent extends RefundMethodEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends RefundMethodEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
