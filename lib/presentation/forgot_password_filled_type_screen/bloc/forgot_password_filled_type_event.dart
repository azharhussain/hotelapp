// ignore_for_file: must_be_immutable

part of 'forgot_password_filled_type_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordFilledType widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordFilledTypeEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordFilledType widget is first created.
class ForgotPasswordFilledTypeInitialEvent
    extends ForgotPasswordFilledTypeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ForgotPasswordFilledTypeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
