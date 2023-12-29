// ignore_for_file: must_be_immutable

part of 'search_page_tab_container_bloc.dart';

/// Represents the state of SearchPageTabContainer in the application.
class SearchPageTabContainerState extends Equatable {
  SearchPageTabContainerState({
    this.searchController,
    this.searchPageTabContainerModelObj,
  });

  TextEditingController? searchController;

  SearchPageTabContainerModel? searchPageTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchPageTabContainerModelObj,
      ];
  SearchPageTabContainerState copyWith({
    TextEditingController? searchController,
    SearchPageTabContainerModel? searchPageTabContainerModelObj,
  }) {
    return SearchPageTabContainerState(
      searchController: searchController ?? this.searchController,
      searchPageTabContainerModelObj:
          searchPageTabContainerModelObj ?? this.searchPageTabContainerModelObj,
    );
  }
}
