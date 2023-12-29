// ignore_for_file: must_be_immutable

part of 'forgot_password_bloc.dart';

/// Represents the state of ForgotPassword in the application.
class ForgotPasswordState extends Equatable {
  ForgotPasswordState({this.forgotPasswordModelObj});

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [
        forgotPasswordModelObj,
      ];
  ForgotPasswordState copyWith({ForgotPasswordModel? forgotPasswordModelObj}) {
    return ForgotPasswordState(
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}
