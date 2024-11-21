// ignore_for_file: must_be_immutable

part of 'onboarding_one_bloc.dart';

/// Represents the state of OnboardingOne in the application.
class OnboardingOneState extends Equatable {
  OnboardingOneState({this.onboardingOneModelObj});

  OnboardingOneModel? onboardingOneModelObj;

  @override
  List<Object?> get props => [
        onboardingOneModelObj,
      ];
  OnboardingOneState copyWith({OnboardingOneModel? onboardingOneModelObj}) {
    return OnboardingOneState(
      onboardingOneModelObj:
          onboardingOneModelObj ?? this.onboardingOneModelObj,
    );
  }
}
