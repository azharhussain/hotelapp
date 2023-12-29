// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignIn widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignInEvent extends Equatable {}

/// Event that is dispatched when the SignIn widget is first created.
class SignInInitialEvent extends SignInEvent {
  @override
  List<Object?> get props => [];
}

///Event that is dispatched when the user calls the https://nodedemo.dhiwise.co/device/auth/login API.
class CreateLoginEvent extends SignInEvent {
  CreateLoginEvent({
    this.onCreateLoginEventSuccess,
    this.onCreateLoginEventError,
  });

  Function? onCreateLoginEventSuccess;

  Function? onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignInEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignInEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
