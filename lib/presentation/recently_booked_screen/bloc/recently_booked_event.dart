// ignore_for_file: must_be_immutable

part of 'recently_booked_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RecentlyBooked widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RecentlyBookedEvent extends Equatable {}

/// Event that is dispatched when the RecentlyBooked widget is first created.
class RecentlyBookedInitialEvent extends RecentlyBookedEvent {
  @override
  List<Object?> get props => [];
}
