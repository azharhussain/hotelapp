// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchtype_item_model.dart';/// This class defines the variables used in the [search_type_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTypeModel extends Equatable {SearchTypeModel({this.searchtypeItemList = const []}) {  }

List<SearchtypeItemModel> searchtypeItemList;

SearchTypeModel copyWith({List<SearchtypeItemModel>? searchtypeItemList}) { return SearchTypeModel(
searchtypeItemList : searchtypeItemList ?? this.searchtypeItemList,
); } 
@override List<Object?> get props => [searchtypeItemList];
 }
