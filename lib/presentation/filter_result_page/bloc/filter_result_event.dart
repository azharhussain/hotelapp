// ignore_for_file: must_be_immutable

part of 'filter_result_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterResult widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterResultEvent extends Equatable {}

/// Event that is dispatched when the FilterResult widget is first created.
class FilterResultInitialEvent extends FilterResultEvent {
  @override
  List<Object?> get props => [];
}
