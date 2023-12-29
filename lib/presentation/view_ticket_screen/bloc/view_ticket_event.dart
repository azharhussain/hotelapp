// ignore_for_file: must_be_immutable

part of 'view_ticket_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewTicket widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewTicketEvent extends Equatable {}

/// Event that is dispatched when the ViewTicket widget is first created.
class ViewTicketInitialEvent extends ViewTicketEvent {
  @override
  List<Object?> get props => [];
}
