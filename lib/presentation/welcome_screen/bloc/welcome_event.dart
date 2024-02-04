// ignore_for_file: must_be_immutable

part of 'welcome_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Welcome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomeEvent extends Equatable {}

/// Event that is dispatched when the Welcome widget is first created.
class WelcomeInitialEvent extends WelcomeEvent {
  @override
  List<Object?> get props => [];
}
