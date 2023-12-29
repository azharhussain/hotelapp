// ignore_for_file: must_be_immutable

part of 'onboarding_three_bloc.dart';

/// Represents the state of OnboardingThree in the application.
class OnboardingThreeState extends Equatable {
  OnboardingThreeState({this.onboardingThreeModelObj});

  OnboardingThreeModel? onboardingThreeModelObj;

  @override
  List<Object?> get props => [
        onboardingThreeModelObj,
      ];
  OnboardingThreeState copyWith(
      {OnboardingThreeModel? onboardingThreeModelObj}) {
    return OnboardingThreeState(
      onboardingThreeModelObj:
          onboardingThreeModelObj ?? this.onboardingThreeModelObj,
    );
  }
}
