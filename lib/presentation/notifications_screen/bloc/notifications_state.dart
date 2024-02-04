// ignore_for_file: must_be_immutable

part of 'notifications_bloc.dart';

/// Represents the state of Notifications in the application.
class NotificationsState extends Equatable {
  NotificationsState({this.notificationsModelObj});

  NotificationsModel? notificationsModelObj;

  @override
  List<Object?> get props => [
        notificationsModelObj,
      ];
  NotificationsState copyWith({NotificationsModel? notificationsModelObj}) {
    return NotificationsState(
      notificationsModelObj:
          notificationsModelObj ?? this.notificationsModelObj,
    );
  }
}
