// ignore_for_file: must_be_immutable

part of 'home_screen_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScreenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScreenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeScreenTabContainer widget is first created.
class HomeScreenTabContainerInitialEvent extends HomeScreenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
