import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/let_s_you_in_screen/models/let_s_you_in_model.dart';part 'let_s_you_in_event.dart';part 'let_s_you_in_state.dart';/// A bloc that manages the state of a LetSYouIn according to the event that is dispatched to it.
class LetSYouInBloc extends Bloc<LetSYouInEvent, LetSYouInState> {LetSYouInBloc(LetSYouInState initialState) : super(initialState) { on<LetSYouInInitialEvent>(_onInitialize); }

_onInitialize(LetSYouInInitialEvent event, Emitter<LetSYouInState> emit, ) async  {  } 
 }
