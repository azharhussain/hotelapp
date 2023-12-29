// ignore_for_file: must_be_immutable

part of 'app_navigation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppNavigation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppNavigationEvent extends Equatable {}

/// Event that is dispatched when the AppNavigation widget is first created.
class AppNavigationInitialEvent extends AppNavigationEvent {
  @override
  List<Object?> get props => [];
}
