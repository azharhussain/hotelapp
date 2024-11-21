// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'filterresult_item_model.dart';/// This class defines the variables used in the [filter_result_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterResultModel extends Equatable {FilterResultModel({this.filterresultItemList = const []}) {  }

List<FilterresultItemModel> filterresultItemList;

FilterResultModel copyWith({List<FilterresultItemModel>? filterresultItemList}) { return FilterResultModel(
filterresultItemList : filterresultItemList ?? this.filterresultItemList,
); } 
@override List<Object?> get props => [filterresultItemList];
 }
