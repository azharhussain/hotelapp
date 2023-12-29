// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Search widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchEvent extends Equatable {}

/// Event that is dispatched when the Search widget is first created.
class SearchInitialEvent extends SearchEvent {
  @override
  List<Object?> get props => [];
}
