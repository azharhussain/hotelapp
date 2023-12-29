// ignore_for_file: must_be_immutable

part of 'home_screen_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScreenContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScreenContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeScreenContainer widget is first created.
class HomeScreenContainerInitialEvent extends HomeScreenContainerEvent {
  @override
  List<Object?> get props => [];
}
