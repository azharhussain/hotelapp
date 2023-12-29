// ignore_for_file: must_be_immutable

part of 'search_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchTypeEvent extends Equatable {}

/// Event that is dispatched when the SearchType widget is first created.
class SearchTypeInitialEvent extends SearchTypeEvent {
  @override
  List<Object?> get props => [];
}
