// ignore_for_file: must_be_immutable

part of 'sign_up_blank_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpBlank widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpBlankEvent extends Equatable {}

/// Event that is dispatched when the SignUpBlank widget is first created.
class SignUpBlankInitialEvent extends SignUpBlankEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUpBlankEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUpBlankEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
