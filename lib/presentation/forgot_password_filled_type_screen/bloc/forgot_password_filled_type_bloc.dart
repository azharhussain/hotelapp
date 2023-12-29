import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/forgot_password_filled_type_screen/models/forgot_password_filled_type_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'forgot_password_filled_type_event.dart';part 'forgot_password_filled_type_state.dart';/// A bloc that manages the state of a ForgotPasswordFilledType according to the event that is dispatched to it.
class ForgotPasswordFilledTypeBloc extends Bloc<ForgotPasswordFilledTypeEvent, ForgotPasswordFilledTypeState> with  CodeAutoFill {ForgotPasswordFilledTypeBloc(ForgotPasswordFilledTypeState initialState) : super(initialState) { on<ForgotPasswordFilledTypeInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ForgotPasswordFilledTypeState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(ForgotPasswordFilledTypeInitialEvent event, Emitter<ForgotPasswordFilledTypeState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
