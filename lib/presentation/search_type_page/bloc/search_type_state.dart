// ignore_for_file: must_be_immutable

part of 'search_type_bloc.dart';

/// Represents the state of SearchType in the application.
class SearchTypeState extends Equatable {
  SearchTypeState({this.searchTypeModelObj});

  SearchTypeModel? searchTypeModelObj;

  @override
  List<Object?> get props => [
        searchTypeModelObj,
      ];
  SearchTypeState copyWith({SearchTypeModel? searchTypeModelObj}) {
    return SearchTypeState(
      searchTypeModelObj: searchTypeModelObj ?? this.searchTypeModelObj,
    );
  }
}
