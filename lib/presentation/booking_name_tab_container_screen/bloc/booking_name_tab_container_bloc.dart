import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/booking_name_tab_container_screen/models/booking_name_tab_container_model.dart';part 'booking_name_tab_container_event.dart';part 'booking_name_tab_container_state.dart';/// A bloc that manages the state of a BookingNameTabContainer according to the event that is dispatched to it.
class BookingNameTabContainerBloc extends Bloc<BookingNameTabContainerEvent, BookingNameTabContainerState> {BookingNameTabContainerBloc(BookingNameTabContainerState initialState) : super(initialState) { on<BookingNameTabContainerInitialEvent>(_onInitialize); }

_onInitialize(BookingNameTabContainerInitialEvent event, Emitter<BookingNameTabContainerState> emit, ) async  {  } 
 }
