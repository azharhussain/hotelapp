// ignore_for_file: must_be_immutable

part of 'notification_settings_bloc.dart';

/// Represents the state of NotificationSettings in the application.
class NotificationSettingsState extends Equatable {
  NotificationSettingsState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.isSelectedSwitch2 = false,
    this.isSelectedSwitch3 = false,
    this.isSelectedSwitch4 = false,
    this.isSelectedSwitch5 = false,
    this.notificationSettingsModelObj,
  });

  NotificationSettingsModel? notificationSettingsModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  bool isSelectedSwitch2;

  bool isSelectedSwitch3;

  bool isSelectedSwitch4;

  bool isSelectedSwitch5;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        isSelectedSwitch2,
        isSelectedSwitch3,
        isSelectedSwitch4,
        isSelectedSwitch5,
        notificationSettingsModelObj,
      ];
  NotificationSettingsState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    bool? isSelectedSwitch2,
    bool? isSelectedSwitch3,
    bool? isSelectedSwitch4,
    bool? isSelectedSwitch5,
    NotificationSettingsModel? notificationSettingsModelObj,
  }) {
    return NotificationSettingsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      isSelectedSwitch2: isSelectedSwitch2 ?? this.isSelectedSwitch2,
      isSelectedSwitch3: isSelectedSwitch3 ?? this.isSelectedSwitch3,
      isSelectedSwitch4: isSelectedSwitch4 ?? this.isSelectedSwitch4,
      isSelectedSwitch5: isSelectedSwitch5 ?? this.isSelectedSwitch5,
      notificationSettingsModelObj:
          notificationSettingsModelObj ?? this.notificationSettingsModelObj,
    );
  }
}
