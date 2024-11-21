// ignore_for_file: must_be_immutable

part of 'booking_ongoing_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BookingOngoingTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BookingOngoingTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BookingOngoingTabContainer widget is first created.
class BookingOngoingTabContainerInitialEvent
    extends BookingOngoingTabContainerEvent {
  @override
  List<Object?> get props => [];
}
