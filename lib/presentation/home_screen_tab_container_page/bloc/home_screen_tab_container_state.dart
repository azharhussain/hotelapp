// ignore_for_file: must_be_immutable

part of 'home_screen_tab_container_bloc.dart';

/// Represents the state of HomeScreenTabContainer in the application.
class HomeScreenTabContainerState extends Equatable {
  HomeScreenTabContainerState({
    this.searchController,
    this.homeScreenTabContainerModelObj,
  });

  TextEditingController? searchController;

  HomeScreenTabContainerModel? homeScreenTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homeScreenTabContainerModelObj,
      ];
  HomeScreenTabContainerState copyWith({
    TextEditingController? searchController,
    HomeScreenTabContainerModel? homeScreenTabContainerModelObj,
  }) {
    return HomeScreenTabContainerState(
      searchController: searchController ?? this.searchController,
      homeScreenTabContainerModelObj:
          homeScreenTabContainerModelObj ?? this.homeScreenTabContainerModelObj,
    );
  }
}
