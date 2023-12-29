// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchpagelist_item_model.dart';/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {SearchModel({this.searchpagelistItemList = const []}) {  }

List<SearchpagelistItemModel> searchpagelistItemList;

SearchModel copyWith({List<SearchpagelistItemModel>? searchpagelistItemList}) { return SearchModel(
searchpagelistItemList : searchpagelistItemList ?? this.searchpagelistItemList,
); } 
@override List<Object?> get props => [searchpagelistItemList];
 }
