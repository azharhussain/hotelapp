import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/onboarding_one_screen/models/onboarding_one_model.dart';part 'onboarding_one_event.dart';part 'onboarding_one_state.dart';/// A bloc that manages the state of a OnboardingOne according to the event that is dispatched to it.
class OnboardingOneBloc extends Bloc<OnboardingOneEvent, OnboardingOneState> {OnboardingOneBloc(OnboardingOneState initialState) : super(initialState) { on<OnboardingOneInitialEvent>(_onInitialize); }

_onInitialize(OnboardingOneInitialEvent event, Emitter<OnboardingOneState> emit, ) async  {  } 
 }
