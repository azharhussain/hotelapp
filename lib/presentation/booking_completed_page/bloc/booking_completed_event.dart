// ignore_for_file: must_be_immutable

part of 'booking_completed_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingCompleted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingCompletedEvent extends Equatable {}

/// Event that is dispatched when the BookingCompleted widget is first created.
class BookingCompletedInitialEvent extends BookingCompletedEvent {
  @override
  List<Object?> get props => [];
}
