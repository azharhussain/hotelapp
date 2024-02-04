import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/security_screen/models/security_model.dart';part 'security_event.dart';part 'security_state.dart';/// A bloc that manages the state of a Security according to the event that is dispatched to it.
class SecurityBloc extends Bloc<SecurityEvent, SecurityState> {SecurityBloc(SecurityState initialState) : super(initialState) { on<SecurityInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); on<ChangeSwitch2Event>(_changeSwitch2); }

_changeSwitch(ChangeSwitchEvent event, Emitter<SecurityState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<SecurityState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_changeSwitch2(ChangeSwitch2Event event, Emitter<SecurityState> emit, ) { emit(state.copyWith(isSelectedSwitch2: event.value)); } 
_onInitialize(SecurityInitialEvent event, Emitter<SecurityState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false)); } 
 }
