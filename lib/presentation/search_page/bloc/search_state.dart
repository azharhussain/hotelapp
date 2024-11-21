// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

/// Represents the state of Search in the application.
class SearchState extends Equatable {
  SearchState({this.searchModelObj});

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        searchModelObj,
      ];
  SearchState copyWith({SearchModel? searchModelObj}) {
    return SearchState(
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
