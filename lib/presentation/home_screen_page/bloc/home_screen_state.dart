// ignore_for_file: must_be_immutable

part of 'home_screen_bloc.dart';

/// Represents the state of HomeScreen in the application.
class HomeScreenState extends Equatable {
  HomeScreenState({this.homeScreenModelObj});

  HomeScreenModel? homeScreenModelObj;

  @override
  List<Object?> get props => [
        homeScreenModelObj,
      ];
  HomeScreenState copyWith({HomeScreenModel? homeScreenModelObj}) {
    return HomeScreenState(
      homeScreenModelObj: homeScreenModelObj ?? this.homeScreenModelObj,
    );
  }
}
