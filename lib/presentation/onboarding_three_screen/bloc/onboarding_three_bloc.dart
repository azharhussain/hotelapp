import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/onboarding_three_screen/models/onboarding_three_model.dart';part 'onboarding_three_event.dart';part 'onboarding_three_state.dart';/// A bloc that manages the state of a OnboardingThree according to the event that is dispatched to it.
class OnboardingThreeBloc extends Bloc<OnboardingThreeEvent, OnboardingThreeState> {OnboardingThreeBloc(OnboardingThreeState initialState) : super(initialState) { on<OnboardingThreeInitialEvent>(_onInitialize); }

_onInitialize(OnboardingThreeInitialEvent event, Emitter<OnboardingThreeState> emit, ) async  {  } 
 }
