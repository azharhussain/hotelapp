// ignore_for_file: must_be_immutable

part of 'onboarding_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingTwoEvent extends Equatable {}

/// Event that is dispatched when the OnboardingTwo widget is first created.
class OnboardingTwoInitialEvent extends OnboardingTwoEvent {
  @override
  List<Object?> get props => [];
}
