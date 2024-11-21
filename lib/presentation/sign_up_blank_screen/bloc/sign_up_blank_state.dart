// ignore_for_file: must_be_immutable

part of 'sign_up_blank_bloc.dart';

/// Represents the state of SignUpBlank in the application.
class SignUpBlankState extends Equatable {
  SignUpBlankState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.rememberme = false,
    this.signUpBlankModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpBlankModel? signUpBlankModelObj;

  bool isShowPassword;

  bool rememberme;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        rememberme,
        signUpBlankModelObj,
      ];
  SignUpBlankState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? rememberme,
    SignUpBlankModel? signUpBlankModelObj,
  }) {
    return SignUpBlankState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      rememberme: rememberme ?? this.rememberme,
      signUpBlankModelObj: signUpBlankModelObj ?? this.signUpBlankModelObj,
    );
  }
}
