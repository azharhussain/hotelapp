// ignore_for_file: must_be_immutable

part of 'choose_payment_method_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChoosePaymentMethod widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChoosePaymentMethodEvent extends Equatable {}

/// Event that is dispatched when the ChoosePaymentMethod widget is first created.
class ChoosePaymentMethodInitialEvent extends ChoosePaymentMethodEvent {
  @override
  List<Object?> get props => [];
}
