// ignore_for_file: must_be_immutable

part of 'onboarding_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingThreeEvent extends Equatable {}

/// Event that is dispatched when the OnboardingThree widget is first created.
class OnboardingThreeInitialEvent extends OnboardingThreeEvent {
  @override
  List<Object?> get props => [];
}
