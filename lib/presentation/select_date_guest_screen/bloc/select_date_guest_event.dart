// ignore_for_file: must_be_immutable

part of 'select_date_guest_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectDateGuest widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectDateGuestEvent extends Equatable {}

/// Event that is dispatched when the SelectDateGuest widget is first created.
class SelectDateGuestInitialEvent extends SelectDateGuestEvent {
  @override
  List<Object?> get props => [];
}
