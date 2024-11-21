// ignore_for_file: must_be_immutable

part of 'profile_settings_bloc.dart';

/// Represents the state of ProfileSettings in the application.
class ProfileSettingsState extends Equatable {
  ProfileSettingsState({
    this.isSelectedSwitch = false,
    this.profileSettingsModelObj,
  });

  ProfileSettingsModel? profileSettingsModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        profileSettingsModelObj,
      ];
  ProfileSettingsState copyWith({
    bool? isSelectedSwitch,
    ProfileSettingsModel? profileSettingsModelObj,
  }) {
    return ProfileSettingsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      profileSettingsModelObj:
          profileSettingsModelObj ?? this.profileSettingsModelObj,
    );
  }
}
