// ignore_for_file: must_be_immutable

part of 'filter_result_bloc.dart';

/// Represents the state of FilterResult in the application.
class FilterResultState extends Equatable {
  FilterResultState({this.filterResultModelObj});

  FilterResultModel? filterResultModelObj;

  @override
  List<Object?> get props => [
        filterResultModelObj,
      ];
  FilterResultState copyWith({FilterResultModel? filterResultModelObj}) {
    return FilterResultState(
      filterResultModelObj: filterResultModelObj ?? this.filterResultModelObj,
    );
  }
}
