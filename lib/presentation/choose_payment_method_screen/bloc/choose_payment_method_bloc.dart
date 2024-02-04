import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/choose_payment_method_screen/models/choose_payment_method_model.dart';part 'choose_payment_method_event.dart';part 'choose_payment_method_state.dart';/// A bloc that manages the state of a ChoosePaymentMethod according to the event that is dispatched to it.
class ChoosePaymentMethodBloc extends Bloc<ChoosePaymentMethodEvent, ChoosePaymentMethodState> {ChoosePaymentMethodBloc(ChoosePaymentMethodState initialState) : super(initialState) { on<ChoosePaymentMethodInitialEvent>(_onInitialize); }

_onInitialize(ChoosePaymentMethodInitialEvent event, Emitter<ChoosePaymentMethodState> emit, ) async  {  } 
 }
