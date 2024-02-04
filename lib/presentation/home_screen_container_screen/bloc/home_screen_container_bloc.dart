import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hotelapp/presentation/home_screen_container_screen/models/home_screen_container_model.dart';part 'home_screen_container_event.dart';part 'home_screen_container_state.dart';/// A bloc that manages the state of a HomeScreenContainer according to the event that is dispatched to it.
class HomeScreenContainerBloc extends Bloc<HomeScreenContainerEvent, HomeScreenContainerState> {HomeScreenContainerBloc(HomeScreenContainerState initialState) : super(initialState) { on<HomeScreenContainerInitialEvent>(_onInitialize); }

_onInitialize(HomeScreenContainerInitialEvent event, Emitter<HomeScreenContainerState> emit, ) async  {  } 
 }
