// ignore_for_file: must_be_immutable

part of 'security_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Security widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SecurityEvent extends Equatable {}

/// Event that is dispatched when the Security widget is first created.
class SecurityInitialEvent extends SecurityEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SecurityEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch1Event extends SecurityEvent {
  ChangeSwitch1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitch2Event extends SecurityEvent {
  ChangeSwitch2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
