// ignore_for_file: must_be_immutable

part of 'forgot_password_type_otp_bloc.dart';

/// Represents the state of ForgotPasswordTypeOtp in the application.
class ForgotPasswordTypeOtpState extends Equatable {
  ForgotPasswordTypeOtpState({
    this.otpController,
    this.forgotPasswordTypeOtpModelObj,
  });

  TextEditingController? otpController;

  ForgotPasswordTypeOtpModel? forgotPasswordTypeOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        forgotPasswordTypeOtpModelObj,
      ];
  ForgotPasswordTypeOtpState copyWith({
    TextEditingController? otpController,
    ForgotPasswordTypeOtpModel? forgotPasswordTypeOtpModelObj,
  }) {
    return ForgotPasswordTypeOtpState(
      otpController: otpController ?? this.otpController,
      forgotPasswordTypeOtpModelObj:
          forgotPasswordTypeOtpModelObj ?? this.forgotPasswordTypeOtpModelObj,
    );
  }
}
