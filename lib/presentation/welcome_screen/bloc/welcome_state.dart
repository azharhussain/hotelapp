// ignore_for_file: must_be_immutable

part of 'welcome_bloc.dart';

/// Represents the state of Welcome in the application.
class WelcomeState extends Equatable {
  WelcomeState({this.welcomeModelObj});

  WelcomeModel? welcomeModelObj;

  @override
  List<Object?> get props => [
        welcomeModelObj,
      ];
  WelcomeState copyWith({WelcomeModel? welcomeModelObj}) {
    return WelcomeState(
      welcomeModelObj: welcomeModelObj ?? this.welcomeModelObj,
    );
  }
}
