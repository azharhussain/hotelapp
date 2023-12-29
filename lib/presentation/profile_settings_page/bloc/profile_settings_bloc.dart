import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/profile_settings_page/models/profile_settings_model.dart';part 'profile_settings_event.dart';part 'profile_settings_state.dart';/// A bloc that manages the state of a ProfileSettings according to the event that is dispatched to it.
class ProfileSettingsBloc extends Bloc<ProfileSettingsEvent, ProfileSettingsState> {ProfileSettingsBloc(ProfileSettingsState initialState) : super(initialState) { on<ProfileSettingsInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); }

_changeSwitch(ChangeSwitchEvent event, Emitter<ProfileSettingsState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_onInitialize(ProfileSettingsInitialEvent event, Emitter<ProfileSettingsState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false)); } 
 }
