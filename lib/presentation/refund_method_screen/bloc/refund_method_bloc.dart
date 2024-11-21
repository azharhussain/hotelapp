import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/refund_method_screen/models/refund_method_model.dart';part 'refund_method_event.dart';part 'refund_method_state.dart';/// A bloc that manages the state of a RefundMethod according to the event that is dispatched to it.
class RefundMethodBloc extends Bloc<RefundMethodEvent, RefundMethodState> {RefundMethodBloc(RefundMethodState initialState) : super(initialState) { on<RefundMethodInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<RefundMethodState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_onInitialize(RefundMethodInitialEvent event, Emitter<RefundMethodState> emit, ) async  { emit(state.copyWith(radioGroup: "")); } 
 }
