// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchpage_item_model.dart';/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {SearchModel({this.searchpageItemList = const []}) {  }

List<SearchpageItemModel> searchpageItemList;

SearchModel copyWith({List<SearchpageItemModel>? searchpageItemList}) { return SearchModel(
searchpageItemList : searchpageItemList ?? this.searchpageItemList,
); } 
@override List<Object?> get props => [searchpageItemList];
 }
