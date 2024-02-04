import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/confirm_payment_screen/models/confirm_payment_model.dart';part 'confirm_payment_event.dart';part 'confirm_payment_state.dart';/// A bloc that manages the state of a ConfirmPayment according to the event that is dispatched to it.
class ConfirmPaymentBloc extends Bloc<ConfirmPaymentEvent, ConfirmPaymentState> {ConfirmPaymentBloc(ConfirmPaymentState initialState) : super(initialState) { on<ConfirmPaymentInitialEvent>(_onInitialize); }

_onInitialize(ConfirmPaymentInitialEvent event, Emitter<ConfirmPaymentState> emit, ) async  {  } 
 }
