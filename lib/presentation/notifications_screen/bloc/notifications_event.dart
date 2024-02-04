// ignore_for_file: must_be_immutable

part of 'notifications_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Notifications widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NotificationsEvent extends Equatable {}

/// Event that is dispatched when the Notifications widget is first created.
class NotificationsInitialEvent extends NotificationsEvent {
  @override
  List<Object?> get props => [];
}
