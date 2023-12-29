// ignore_for_file: must_be_immutable

part of 'onboarding_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingOneEvent extends Equatable {}

/// Event that is dispatched when the OnboardingOne widget is first created.
class OnboardingOneInitialEvent extends OnboardingOneEvent {
  @override
  List<Object?> get props => [];
}
