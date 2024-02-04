import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/welcome_screen/models/welcome_model.dart';part 'welcome_event.dart';part 'welcome_state.dart';/// A bloc that manages the state of a Welcome according to the event that is dispatched to it.
class WelcomeBloc extends Bloc<WelcomeEvent, WelcomeState> {WelcomeBloc(WelcomeState initialState) : super(initialState) { on<WelcomeInitialEvent>(_onInitialize); }

_onInitialize(WelcomeInitialEvent event, Emitter<WelcomeState> emit, ) async  { Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.pushNamed(AppRoutes.onboardingOneScreen, );}); } 
 }
