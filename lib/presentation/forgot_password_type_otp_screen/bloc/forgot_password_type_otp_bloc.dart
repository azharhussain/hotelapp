import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/forgot_password_type_otp_screen/models/forgot_password_type_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'forgot_password_type_otp_event.dart';part 'forgot_password_type_otp_state.dart';/// A bloc that manages the state of a ForgotPasswordTypeOtp according to the event that is dispatched to it.
class ForgotPasswordTypeOtpBloc extends Bloc<ForgotPasswordTypeOtpEvent, ForgotPasswordTypeOtpState> with  CodeAutoFill {ForgotPasswordTypeOtpBloc(ForgotPasswordTypeOtpState initialState) : super(initialState) { on<ForgotPasswordTypeOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<ForgotPasswordTypeOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(ForgotPasswordTypeOtpInitialEvent event, Emitter<ForgotPasswordTypeOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
