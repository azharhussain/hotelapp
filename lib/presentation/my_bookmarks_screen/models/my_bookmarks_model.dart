// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'mybookmarks_item_model.dart';/// This class defines the variables used in the [my_bookmarks_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookmarksModel extends Equatable {MyBookmarksModel({this.mybookmarksItemList = const []}) {  }

List<MybookmarksItemModel> mybookmarksItemList;

MyBookmarksModel copyWith({List<MybookmarksItemModel>? mybookmarksItemList}) { return MyBookmarksModel(
mybookmarksItemList : mybookmarksItemList ?? this.mybookmarksItemList,
); } 
@override List<Object?> get props => [mybookmarksItemList];
 }
