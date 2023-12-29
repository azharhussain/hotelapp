// ignore_for_file: must_be_immutable

part of 'forgot_password_type_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordTypeOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordTypeOtpEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordTypeOtp widget is first created.
class ForgotPasswordTypeOtpInitialEvent extends ForgotPasswordTypeOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ForgotPasswordTypeOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
