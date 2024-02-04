// ignore_for_file: must_be_immutable

part of 'home_screen_container_bloc.dart';

/// Represents the state of HomeScreenContainer in the application.
class HomeScreenContainerState extends Equatable {
  HomeScreenContainerState({this.homeScreenContainerModelObj});

  HomeScreenContainerModel? homeScreenContainerModelObj;

  @override
  List<Object?> get props => [
        homeScreenContainerModelObj,
      ];
  HomeScreenContainerState copyWith(
      {HomeScreenContainerModel? homeScreenContainerModelObj}) {
    return HomeScreenContainerState(
      homeScreenContainerModelObj:
          homeScreenContainerModelObj ?? this.homeScreenContainerModelObj,
    );
  }
}
