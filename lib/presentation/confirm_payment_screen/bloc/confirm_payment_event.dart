// ignore_for_file: must_be_immutable

part of 'confirm_payment_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmPayment widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmPaymentEvent extends Equatable {}

/// Event that is dispatched when the ConfirmPayment widget is first created.
class ConfirmPaymentInitialEvent extends ConfirmPaymentEvent {
  @override
  List<Object?> get props => [];
}
