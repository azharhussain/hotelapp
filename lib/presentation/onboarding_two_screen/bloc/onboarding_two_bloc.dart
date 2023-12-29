import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/onboarding_two_screen/models/onboarding_two_model.dart';part 'onboarding_two_event.dart';part 'onboarding_two_state.dart';/// A bloc that manages the state of a OnboardingTwo according to the event that is dispatched to it.
class OnboardingTwoBloc extends Bloc<OnboardingTwoEvent, OnboardingTwoState> {OnboardingTwoBloc(OnboardingTwoState initialState) : super(initialState) { on<OnboardingTwoInitialEvent>(_onInitialize); }

_onInitialize(OnboardingTwoInitialEvent event, Emitter<OnboardingTwoState> emit, ) async  {  } 
 }
