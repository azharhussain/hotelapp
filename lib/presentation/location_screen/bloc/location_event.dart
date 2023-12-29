// ignore_for_file: must_be_immutable

part of 'location_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Location widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LocationEvent extends Equatable {}

/// Event that is dispatched when the Location widget is first created.
class LocationInitialEvent extends LocationEvent {
  @override
  List<Object?> get props => [];
}
