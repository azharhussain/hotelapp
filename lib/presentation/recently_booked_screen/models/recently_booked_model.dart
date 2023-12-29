// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'recentlybookedlist_item_model.dart';/// This class defines the variables used in the [recently_booked_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecentlyBookedModel extends Equatable {RecentlyBookedModel({this.recentlybookedlistItemList = const []}) {  }

List<RecentlybookedlistItemModel> recentlybookedlistItemList;

RecentlyBookedModel copyWith({List<RecentlybookedlistItemModel>? recentlybookedlistItemList}) { return RecentlyBookedModel(
recentlybookedlistItemList : recentlybookedlistItemList ?? this.recentlybookedlistItemList,
); } 
@override List<Object?> get props => [recentlybookedlistItemList];
 }
