// ignore_for_file: must_be_immutable

part of 'booking_cancelled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingCancelled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingCancelledEvent extends Equatable {}

/// Event that is dispatched when the BookingCancelled widget is first created.
class BookingCancelledInitialEvent extends BookingCancelledEvent {
  @override
  List<Object?> get props => [];
}
