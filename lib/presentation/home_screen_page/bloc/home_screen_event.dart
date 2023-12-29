// ignore_for_file: must_be_immutable

part of 'home_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeScreenEvent extends Equatable {}

/// Event that is dispatched when the HomeScreen widget is first created.
class HomeScreenInitialEvent extends HomeScreenEvent {
  @override
  List<Object?> get props => [];
}
