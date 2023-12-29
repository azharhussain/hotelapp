// ignore_for_file: must_be_immutable

part of 'booking_name_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingName widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingNameEvent extends Equatable {}

/// Event that is dispatched when the BookingName widget is first created.
class BookingNameInitialEvent extends BookingNameEvent {
  @override
  List<Object?> get props => [];
}
