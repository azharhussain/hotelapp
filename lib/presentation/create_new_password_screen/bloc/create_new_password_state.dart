// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

/// Represents the state of CreateNewPassword in the application.
class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.newpasswordController,
    this.passwordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.rememberme = false,
    this.createNewPasswordModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? passwordController;

  CreateNewPasswordModel? createNewPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool rememberme;

  @override
  List<Object?> get props => [
        newpasswordController,
        passwordController,
        isShowPassword,
        isShowPassword1,
        rememberme,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? rememberme,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      rememberme: rememberme ?? this.rememberme,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
