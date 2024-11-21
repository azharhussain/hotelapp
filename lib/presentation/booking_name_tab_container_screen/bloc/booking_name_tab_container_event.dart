// ignore_for_file: must_be_immutable

part of 'booking_name_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingNameTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingNameTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BookingNameTabContainer widget is first created.
class BookingNameTabContainerInitialEvent extends BookingNameTabContainerEvent {
  @override
  List<Object?> get props => [];
}
