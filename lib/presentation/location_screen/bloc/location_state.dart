// ignore_for_file: must_be_immutable

part of 'location_bloc.dart';

/// Represents the state of Location in the application.
class LocationState extends Equatable {
  LocationState({this.locationModelObj});

  LocationModel? locationModelObj;

  @override
  List<Object?> get props => [
        locationModelObj,
      ];
  LocationState copyWith({LocationModel? locationModelObj}) {
    return LocationState(
      locationModelObj: locationModelObj ?? this.locationModelObj,
    );
  }
}
