import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/today_item_model.dart';import 'package:hotelapp/presentation/notifications_screen/models/notifications_model.dart';part 'notifications_event.dart';part 'notifications_state.dart';/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {NotificationsBloc(NotificationsState initialState) : super(initialState) { on<NotificationsInitialEvent>(_onInitialize); }

_onInitialize(NotificationsInitialEvent event, Emitter<NotificationsState> emit, ) async  { emit(state.copyWith(notificationsModelObj: state.notificationsModelObj?.copyWith(todayItemList: fillTodayItemList()))); } 
List<TodayItemModel> fillTodayItemList() { return [TodayItemModel(groupBy: "Today"), TodayItemModel(groupBy: "Today"), TodayItemModel(groupBy: "Yesterday"), TodayItemModel(groupBy: "Yesterday")]; } 
 }
