import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/card_added_screen/models/card_added_model.dart';part 'card_added_event.dart';part 'card_added_state.dart';/// A bloc that manages the state of a CardAdded according to the event that is dispatched to it.
class CardAddedBloc extends Bloc<CardAddedEvent, CardAddedState> {CardAddedBloc(CardAddedState initialState) : super(initialState) { on<CardAddedInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<CardAddedState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_onInitialize(CardAddedInitialEvent event, Emitter<CardAddedState> emit, ) async  { emit(state.copyWith(radioGroup: "")); } 
 }
