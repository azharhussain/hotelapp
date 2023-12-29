// ignore_for_file: must_be_immutable

part of 'profile_settings_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileSettings widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileSettingsEvent extends Equatable {}

/// Event that is dispatched when the ProfileSettings widget is first created.
class ProfileSettingsInitialEvent extends ProfileSettingsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends ProfileSettingsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
