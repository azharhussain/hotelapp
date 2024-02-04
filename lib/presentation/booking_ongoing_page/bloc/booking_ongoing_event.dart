// ignore_for_file: must_be_immutable

part of 'booking_ongoing_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingOngoing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingOngoingEvent extends Equatable {}

/// Event that is dispatched when the BookingOngoing widget is first created.
class BookingOngoingInitialEvent extends BookingOngoingEvent {
  @override
  List<Object?> get props => [];
}
