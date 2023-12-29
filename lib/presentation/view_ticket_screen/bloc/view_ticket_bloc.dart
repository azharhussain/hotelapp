import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/view_ticket_screen/models/view_ticket_model.dart';part 'view_ticket_event.dart';part 'view_ticket_state.dart';/// A bloc that manages the state of a ViewTicket according to the event that is dispatched to it.
class ViewTicketBloc extends Bloc<ViewTicketEvent, ViewTicketState> {ViewTicketBloc(ViewTicketState initialState) : super(initialState) { on<ViewTicketInitialEvent>(_onInitialize); }

_onInitialize(ViewTicketInitialEvent event, Emitter<ViewTicketState> emit, ) async  {  } 
 }
